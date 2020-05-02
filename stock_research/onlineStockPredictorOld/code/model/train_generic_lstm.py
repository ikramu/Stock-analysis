##############################################
### This model is training on HM-B.ST data ###
#######  Use the following parameters  #######
### python3 hm_train_lstm_first_min.py -s HM-B.ST -n 5 -b 100 -t 60 -e 100 ###
##############################################

import os, sys, json

# import local library functions
dirPath = os.path.dirname(os.path.realpath(__file__))
module_path = os.path.abspath(os.path.join(dirPath,'../'))
if module_path not in sys.path:
    sys.path.append(module_path)
from lib.preprocessing import *

# imports not present in lib files and required here 
from datetime import datetime
import argparse


def readCommandLineArgs(now):
        parser = argparse.ArgumentParser(description='LSTM model to predict next nth min stock price')
        parser.add_argument(
            '-s',
            '--stockname',
            default='HM-B.ST',
            help='Stock name (string), default=\"HM-B.ST\"'
        )
        parser.add_argument(
            '-n',
            '--predlen',
            default='3',
            help='Number of steps to predict (int), default=10'
        )
        parser.add_argument(
            '-p',
            '--predstep',
            default='5',
            help='How many steps ahead to predict (int), default=1, i.e., the next minute'
        )
        parser.add_argument(
            '-b',
            '--batchsize',
            default = '100',
            help = 'Batch size for the model (int), default=100'
        )
        parser.add_argument(
            '-c',
            '--predcolnum',
            default = '3',
            help = 'Column number used for label (int), default=3'
        )
        parser.add_argument(
            '-t',
            '--timesteps',
            default='30',
            help='Time steps for the model (int), default=30'
        )
        parser.add_argument(
            '-e',
            '--epochs',
            default='100',
            help='Number of epochs (int), default=100'
        )
        
        cmd_args = parser.parse_args()
        #print("Number of minutes to predict: ", cmd_args.predlen)
        stock_name = str(cmd_args.stockname)
        pred_len = int(cmd_args.predlen)
        pred_step = int(cmd_args.predstep)
        batch_size = int(cmd_args.batchsize)
        timesteps = int(cmd_args.timesteps)    
        epochs = int(cmd_args.epochs)

        return cmd_args, stock_name, pred_len, pred_step, batch_size, timesteps, epochs

def main():
    # get current time, will be used to name output directory
    now=datetime.now().strftime('%Y-%m-%d_%H-%M-%S')

    # main directory is two steps up
    basePath = os.path.dirname(os.path.dirname(dirPath))
    print('Directory path is ' + dirPath)
    
    # read command line arguments
    cmdArgs, stockName, predictionLength, predictionStep, batchSize, timeSteps, epochs = readCommandLineArgs(now)

    dirName = stockName+'.TS'+str(timeSteps)+'.BS'+str(batchSize)+'.LookAhead'+str(predictionStep)+'.'+now
    snapshotDir = os.path.join(basePath, 'results', dirName)

    print(snapshotDir)
    os.makedirs(snapshotDir, exist_ok=True)
    logFile = os.path.join(snapshotDir,'model_output.log')

    print('################################')
    print('No. of epochs are ' + str(epochs))

    dataDir = os.path.join(basePath, 'data', 'stockData')
    #dataDir = os.path.join(basePath, 'data', 'temp')
    interval = '1m'

    independentList = list(['^OMXC20', '^OMXC25', '^OMXH25', '^OMXHPI', '^OMX'])
    completeList = list([stockName]) + independentList
    print('################################################################')
    print('Complete list of stocks are:')
    print(completeList)
    print('################################################################')

    # write command line arguments info to file for later use
    # first add all the stocks_info
    argsDict = vars(cmdArgs)
    argsDict['stocks'] = completeList
    with open(os.path.join(snapshotDir,'programArgs.json'), 'w') as claFile:
        #json.dump(cmdArgs.__dict__, claFile, indent=2)
        json.dump(argsDict, claFile, indent=2)
    claFile.close()

    stockData = getFullData(completeList, interval, dataDir)
    np.save(os.path.join(snapshotDir, "stockData"), stockData.values)
    predictionColumnID = int(cmdArgs.predcolnum)
    #predictionColumnID = 3

    # train, test, valid data
    train_ratio = 0.9
    print(str(train_ratio * 100) + '% of data is used for training')
    print(str('----------------------------------------------'))
    train, valid, test = splitTrainValidationTest(stockData, timeSteps, predictionLength, train_ratio = train_ratio)

    print('Preparing data...')
    # normalize the stock data
    xTrain, xValidation, xTest, minMaxScaler = normalizeWithValidationData(train, valid, test)
    train.to_pickle(os.path.join(snapshotDir,"dfTrain.pkl"))
    valid.to_pickle(os.path.join(snapshotDir,"dfValid.pkl"))
    test.to_pickle(os.path.join(snapshotDir,"dfTest.pkl"))
    np.save(os.path.join(snapshotDir,"xTrain"), xTrain)
    np.save(os.path.join(snapshotDir,"xTest"), xTest)
    np.save(os.path.join(snapshotDir,"xValidation"), xValidation)
    joblib.dump(minMaxScaler, os.path.join(snapshotDir,"minMaxScaler.pkl"))

    ### Training data
    # build time-series
    xTimeseries, yTimeseries = buildTimeseries(xTrain, predictionLength, predictionStep, predictionColumnID, timeSteps)
    # trim extra rows from training data
    xTimeseries, extra_rows = trimDataset(xTimeseries, batchSize)
    yTimeseries = yTimeseries[-xTimeseries.shape[0]:] 
    np.save(os.path.join(snapshotDir,"xTimeseries"), xTimeseries)
    np.save(os.path.join(snapshotDir,"yTimeseries"), yTimeseries)

    ### Validation data
    x_v, y_v = buildTimeseries(xValidation, predictionLength, predictionStep, predictionColumnID, timeSteps)
    x_v, extra_rows = trimDataset(x_v, batchSize)
    y_v = y_v[-x_v.shape[0]:]  
    np.save(os.path.join(snapshotDir,"x_v"), x_v)
    np.save(os.path.join(snapshotDir,"y_v"), y_v)

    ### Test data
    x_ts, y_ts = buildTimeseries(xTest, predictionLength, predictionStep, predictionColumnID, timeSteps)
    x_ts, extra_rows = trimDataset(x_ts, batchSize)
    y_ts = y_ts[-x_ts.shape[0]:] 
    np.save(os.path.join(snapshotDir,"x_ts"), x_ts)
    np.save(os.path.join(snapshotDir,"y_ts"), y_ts)

    # build and run the LSTM model
    csv_logger = CSVLogger(os.path.join(logFile), append=True)
    print('Defining model...')
    lstm_model = buildLSTMModel(xTimeseries, predictionLength, batchSize, timeSteps)

    print('Training model...')
    history = lstm_model.fit(xTimeseries, yTimeseries, epochs=epochs, verbose=2, batch_size=batchSize,
                        shuffle=False, validation_data=(x_v,y_v), callbacks=[csv_logger])
    # compute model error
    print('Computing model error...')
    y_pred = lstm_model.predict(x_ts, batch_size=batchSize)
    y_pred_mean = y_pred.mean(axis=1)
    #y_pred = y_pred.flatten()
    y_test_t = y_ts
    y_test_t_mean = y_test_t.mean(axis=1)
    error = mean_squared_error(y_test_t_mean, y_pred_mean)
    print("Squared error of the model is", error)

    # de-normalize the prediction
    #y_pred_mean = y_pred.mean(axis=1)
    y_pred_org = (y_pred_mean * minMaxScaler.data_range_[predictionColumnID]) + minMaxScaler.data_min_[predictionColumnID] 
    y_test_t_org = (y_test_t_mean * minMaxScaler.data_range_[predictionColumnID]) + minMaxScaler.data_min_[predictionColumnID]

    # plot loss and accuracy for model
    plotAccuracyLoss(history, snapshotDir)

    # plot the predicted vs real values
    print('Plotting prediction vs real values...')
    outfile = os.path.join(snapshotDir,"pred_vs_real.png")
    plotRealVsPred(y_pred_org, y_test_t_org, error, outfile)

    # write model to file 
    modelPath = os.path.join(snapshotDir,'trained_model.h5')
    print('Writing model to ' + modelPath)
    lstm_model.save(modelPath)

    print('Analysis done. Check ' + outfile + ' for the plot\n')

if __name__ == '__main__':
    main()
