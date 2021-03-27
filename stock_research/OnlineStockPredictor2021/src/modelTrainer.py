import os
import argparse
import yaml
import joblib
import numpy as np
import pandas as pd
from tqdm import tqdm_notebook
from datetime import datetime, timedelta
from sklearn.preprocessing import MinMaxScaler
from sklearn.metrics import mean_squared_error

import tensorflow as tf
from keras.models import Sequential, save_model, load_model
from keras.callbacks import CSVLogger
from keras.layers import Dense, Embedding, LSTM, Dropout
from keras import optimizers
from matplotlib import pyplot as plt

from trainDataReader import TrainDataReader

class ModelTrainer(object):
    """ super class for reader classes for training and inference 
    """ 
    def __init__(self, dbHost, dbUser, dbPasswd, dbName,dbTable, stocks, snapshotDir):
        super().__init__()
        self._dbHost = dbHost
        self._dbUser = dbUser
        self._dbPasswd = dbPasswd
        self._dbName = dbName
        self._dbTable = dbTable
        self._stocks = stocks
        self._snapshotDir = snapshotDir
        self._tdReader = TrainDataReader(dbHost = dbHost, dbUser = dbUser, dbPasswd = dbPasswd, 
        dbName = dbName, dbTable = dbTable, stocks = stocks)

    def readTrainingData(self, end_date):
        trData = self._tdReader.readStockData(end_date)
        return trData
    
    def normalizeDataAndSave(self, train, valid):
        #train_cols = train.columns[1:]
        train_cols = train.columns
        
        # scale the feature MinMax, build array
        x = train.loc[:,train_cols].values
        self._min_max_scaler = MinMaxScaler()
        x_train = self._min_max_scaler.fit_transform(x)
        x_valid = self._min_max_scaler.transform(valid.loc[:,train_cols])

        train.to_pickle(os.path.join(self._snapshotDir,"dfTrain.pkl"))
        valid.to_pickle(os.path.join(self._snapshotDir,"dfValid.pkl"))
        np.save(os.path.join(self._snapshotDir,"x_train"), x_train)
        np.save(os.path.join(self._snapshotDir,"x_valid"), x_valid)
        joblib.dump(self._min_max_scaler, os.path.join(self._snapshotDir,"minMaxScaler.pkl"))
        
        return x_train, x_valid, self._min_max_scaler

    def buildTimeseries(self, mat, pred_len, pred_step, pred_col_id, time_steps, batchSize):
        # We skip the pred_step so it needs to be catered in for-loop
        # pred_col_id is the index of column that would act as output column
        # total number of time-series samples would be len(mat) - TIME_STEPS
        dim_0 = mat.shape[0] - time_steps - pred_step - pred_len + 1
        dim_1 = mat.shape[1]
        x = np.zeros((dim_0, time_steps, dim_1))
        y = np.zeros((dim_0,pred_len))
        
        for i in tqdm_notebook(range(x.shape[0])):
            x[i] = mat[i:time_steps+i]
            y[i] = mat[time_steps+i+pred_step:time_steps+i+pred_step+pred_len, pred_col_id].reshape(pred_len,)
        
        x = self.trimDataset(x, batchSize)
        y = y[-x.shape[0]:] 
        np.save(os.path.join(self._snapshotDir,"xTimeseries"), x)
        np.save(os.path.join(self._snapshotDir,"yTimeseries"), y)

        return x, y

    # trims dataset to a size that's divisible by BATCH_SIZE
    def trimDataset(self,mat, batch_size):
        no_of_rows_drop = mat.shape[0]%batch_size
        if(no_of_rows_drop > 0):
            return mat[no_of_rows_drop:]
        else:
            return mat

    def buildLSTMModel(self, train_data, pred_len, batch_size, timeSteps):  
        model = Sequential()
        model.add(LSTM(150, batch_input_shape=(batch_size, timeSteps, 
        train_data.shape[2]), dropout=0.0, recurrent_dropout=0.0, 
        stateful=True, kernel_initializer='random_uniform'))
        model.add(Dropout(0.5))
        model.add(Dense(40,activation='relu'))
        model.add(Dense(pred_len,activation='sigmoid'))
        optimizer = optimizers.RMSprop(lr=0.001)
        model.compile(loss='mean_squared_error', optimizer=optimizer)
        return model
    
    def compute_sq_error(self, lstm_model, x_test_data, y_test_data, batchSize, predColId, outfile):
        # compute model error
        print('Computing model error...')
        y_pred = lstm_model.predict(x_test_data, batch_size=batchSize)
        y_pred_mean = y_pred.mean(axis=1)
        y_test_mean = y_test_data.mean(axis=1)

        # de-normalize the prediction
        y_pred_prices = (y_pred_mean * self._min_max_scaler.data_range_[predColId]) + self._min_max_scaler.data_min_[predColId] 
        y_orig_prices = (y_test_mean * self._min_max_scaler.data_range_[predColId]) + self._min_max_scaler.data_min_[predColId]

        error = mean_squared_error(y_orig_prices, y_pred_prices)

        self.plotRealVsPred(y_pred_prices, y_orig_prices, error, outfile)
        return error

    def plotAccuracyLoss(self, history, outdir):
        # plot loss
        plt.figure(figsize=(20,15))
        plt.plot(history.history['loss'])
        plt.plot(history.history['val_loss'])
        plt.title('Model training loss')
        plt.ylabel('Loss')
        plt.xlabel('Epoch')
        plt.legend(['Training', 'Validation'], loc='upper left')
        outfile = os.path.join(outdir,'training_loss.png')
        plt.savefig(outfile, dpi=100)

    def plotRealVsPred(self, pred, real, error, outfile):
        plt.figure(figsize=(20,15))
        plt.plot(pred)
        plt.plot(real)
        plt.title('Prediction vs Real Stock Price (Sq. Error: ' + str(error) + ')')
        plt.ylabel('Price (in SEK)')
        plt.xlabel('Minutes')
        plt.legend(['Prediction', 'Real'], loc='upper left')
        plt.savefig(outfile, dpi = 100)   # save the figure to file
        
def readCommandLineArgs():
    dirPath = os.path.dirname(os.path.realpath(__file__))
    now=datetime.now().strftime('%Y-%m-%d_%H-%M-%S')
    snapshotDir = os.path.join(dirPath, 'results', now)
    parser = argparse.ArgumentParser(description='LSTM model to predict next nth min stock price')
    parser.add_argument(
        '-m',
        '--markettype',
        default='se',
        help='Stock market (string), default=\"se\"'
    )
    parser.add_argument(
        '-s',
        '--stockname',
        default='XSPRAY.ST',
        help='Stock name (string), default=\"XSPRAY.ST\"'
    )
    parser.add_argument(
        '-n',
        '--predlen',
        default='1',
        help='Number of steps to predict (int), default=1'
    )
    parser.add_argument(
        '-p',
        '--predstep',
        default='1',
        help='How many steps ahead to predict (int), default=1, i.e., the next minute'
    )
    parser.add_argument(
        '-b',
        '--batchsize',
        default = '100',
        help = 'Batch size for the model (int), default=100'
    )
    parser.add_argument(
        '-d',
        '--daysfortesting',
        default = '3',
        help = 'Number of days to use for testing the model (int), default=3'
    )
    parser.add_argument(
        '-t',
        '--timesteps',
        default='60',
        help='Time steps for the model (int), default=60'
    )
    parser.add_argument(
        '-e',
        '--epochs',
        default='100',
        help='Number of epochs (int), default=100'
    )
    parser.add_argument(
        '-o',
        '--outdir',
        default=snapshotDir,
        help='Output directory for writing model and results (string), default=' + os.path.join(dirPath, 'results', 'current_timestamp')
    )
    
    cmd_args = parser.parse_args()
    market_type = str(cmd_args.markettype)
    stock_name = str(cmd_args.stockname)
    pred_len = int(cmd_args.predlen)
    test_days = int(cmd_args.daysfortesting)
    pred_step = int(cmd_args.predstep)
    batch_size = int(cmd_args.batchsize)
    timesteps = int(cmd_args.timesteps)    
    epochs = int(cmd_args.epochs)
    outdir = str(cmd_args.outdir)

    return cmd_args, market_type, stock_name, test_days, pred_len, pred_step, batch_size, timesteps, epochs, outdir

if __name__ == '__main__':
    # import local library functions
    dirPath = os.path.dirname(os.path.realpath(__file__))
    trainYaml = os.path.join(dirPath,'config/train.yaml')
    dbYaml = os.path.join(dirPath, 'config/db.yaml')
    
    end_date = datetime.now()

    # main directory is two steps up
    basePath = os.path.dirname(os.path.dirname(dirPath))
    #now=datetime.now().strftime('%Y-%m-%d_%H-%M-%S')
    print('Directory path is ' + dirPath)

    # read command line arguments
    cmdArgs, stockMarket, stockName, numOfTestingDays, predictionLength, predictionStep, batchSize, timeSteps, epochs, snapshotDir = readCommandLineArgs()

    #dirName = stockName+'.TS'+str(timeSteps)+'.BS'+str(batchSize)+'.LookAhead'+str(predictionStep)+'.'+now
    #snapshotDir = os.path.join(dirPath, 'results', dirName)

    print(snapshotDir)
    os.makedirs(snapshotDir, exist_ok=True)
    logFile = os.path.join(snapshotDir,'model_output.log')

    print('################################')
    print('No. of epochs are ' + str(epochs))

    # read independent stocks for selected stock
    with open(trainYaml) as file:
        documents = yaml.full_load(file)
    indStocks = documents[stockName]
    allStocks = [stockName] + indStocks

    # read database info
    with open(dbYaml) as file:
        documents = yaml.full_load(file)
    dbInfo = documents['dbInfo'][stockMarket]

    # write command line arguments info to file for later use
    # first add all the stocks_info
    argsDict = vars(cmdArgs)
    argsDict['stocks'] = allStocks

    # add db related variables
    argsDict['dbName'] = dbInfo['db']
    argsDict['dbHost'] = dbInfo['dbHost']
    argsDict['dbTable'] = dbInfo['trainTable']

    with open(os.path.join(snapshotDir,'programArgs.yaml'), 'w') as claFile:
        yaml.dump(argsDict, claFile)

    mt = ModelTrainer(dbHost = os.environ['dbHost'], dbUser = os.environ['dbUser'], 
    dbPasswd = os.environ['dbPasswd'], dbName = dbInfo['db'], dbTable = dbInfo['trainTable'], 
    stocks = allStocks, snapshotDir = snapshotDir)
    #tdReader = TrainDataReader(dbHost = os.environ['dbHost'], dbUser = os.environ['dbUser'], 
    #dbPasswd = os.environ['dbPasswd'], dbName = dbInfo['db'], dbTable = dbInfo['trainTable'], stocks = allStocks)
    
    #stockDataMelted = tdReader.readStockData(end_date)
    stockDataMelted = mt.readTrainingData(end_date)
    stockData = stockDataMelted.pivot_table(index='Datetime', columns = 'Ticker')
    stockData = stockData.fillna(method='ffill')
    predColId = np.where(pd.MultiIndex.get_level_values(stockData.columns, level = 1) == stockName)[0][0]
    np.save(os.path.join(snapshotDir, "stockData"), stockData.values)

    # get data for training and validation
    trainingDays = end_date - timedelta(days=numOfTestingDays)
    trainData = stockData[stockData.index < trainingDays]
    validData = stockData.loc[stockData.index.difference(trainData.index)]

    xTrain, xValidation, minMaxScaler = mt.normalizeDataAndSave(trainData, validData)
    
    ### Training data: build time-series
    xTimeseries, yTimeseries = mt.buildTimeseries(xTrain, predictionLength, predictionStep, predColId, timeSteps, batchSize)

    ### Validation data: build time-series
    x_v, y_v = mt.buildTimeseries(xValidation, predictionLength, predictionStep, predColId, timeSteps, batchSize)

    # build and run the LSTM model
    csv_logger = CSVLogger(os.path.join(logFile), append=True)
    print('Defining model...')
    lstm_model = mt.buildLSTMModel(xTimeseries, predictionLength, batchSize, timeSteps)

    print('Training model...')
    history = lstm_model.fit(xTimeseries, yTimeseries, epochs=epochs, verbose=2, batch_size=batchSize,
                        shuffle=False, validation_data=(x_v,y_v), callbacks=[csv_logger])
    
    #lstm_model = load_model('/tmp/lstm_model.tf', compile=True)

    perfPlot = os.path.join(snapshotDir,'perf_plot.jpg')
    error = mt.compute_sq_error(lstm_model, x_v, y_v, batchSize, predColId, perfPlot)
    print("mean squared error of the model is", error)

    # write model to file 
    modelPath = os.path.join(snapshotDir,'trained_model.h5')
    print('Writing model to ' + modelPath)
    lstm_model.save(modelPath)

    print('Analysis done. Check ' + perfPlot + ' for the plot\n')
    

