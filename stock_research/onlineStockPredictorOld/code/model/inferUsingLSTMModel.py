import os, sys

# import local library functions
dirPath = os.path.dirname(os.path.realpath(__file__))
module_path = os.path.abspath(os.path.join(dirPath,'../'))
if module_path not in sys.path:
    sys.path.append(module_path)
from lib.preprocessing import *
from lib.dataIO import *

import argparse, json
from os.path import join
import numpy as np 
import pandas as pd
from time import sleep
from datetime import datetime, timedelta
from keras.models import load_model
from keras.utils import plot_model
from sklearn.externals import joblib
from matplotlib import pyplot as plt
import yfinance as yf


def arg_setting1(): 
    dir_path = os.path.dirname(os.path.realpath(__file__))
    parser = argparse.ArgumentParser(description='Use trained LSTM model to predict stock prices')
    parser.add_argument(
        '-p',
        '--modelpath',
        default='/example_data/example.h5',
        help='File path for Keras model (string), default=\"models/example.h5\"'
    )
    parser.add_argument(
        '-d',
        '--datadir',
        default='/example_data/',
        help='Directory containing pickle files (string), default=\"/example_data/\"'
    )
    parser.add_argument(
        '-b',
        '--batchsize',
        default='60',
        help='File path for Keras model (int), default=60'
    )
    parser.add_argument(
        '-s',
        '--minmaxscaler',
        default='example_data/min_max_scaler.pkl',
        help='File path for Keras model (string), default=\"example_data/min_max_scaler.pkl\"'
    )

    cmd_args = parser.parse_args()
    model_path = dir_path + "/" + str(cmd_args.modelpath)
    batch_size = int(cmd_args.batchsize)
    min_max_scaler = dir_path + "/" + str(cmd_args.minmaxscaler)
    data_dir = dir_path + "/" + str(cmd_args.datadir)

    return model_path, data_dir, batch_size, min_max_scaler

def load_lstm_model(path):
    dir_path = os.path.dirname(os.path.realpath(__file__))
    full_model_path = os.path.join(dir_path, path)
    model = load_model(full_model_path)

    return model

def trim_dataset(mat, batch_size):
    """
    trims dataset to a size that's divisible by BATCH_SIZE
    """
    no_of_rows_drop = mat.shape[0]%batch_size
    if(no_of_rows_drop > 0):
        return mat[:-no_of_rows_drop]
    else:
        return mat

def make_predictions(model, data_dir):
    batch_size = model.layers[0].input_shape[0]
    x_valid = np.load(os.path.join(data_dir,'x_ts.npy'))
    x_valid = trim_dataset(x_valid, batch_size)
    real = np.load(os.path.join(data_dir,'y_ts.npy'))
    real = trim_dataset(real, batch_size)
    pred = model.predict(x_valid, batch_size=batch_size)


def rescale_values(arr, min_max_scaler):
    # Predicted column is the first one in data, i.e., 0
    arr_orig = (arr * min_max_scaler.data_range_[0]) + min_max_scaler.data_min_[0] 
    
    return arr_orig


def plot_real_vs_pred(real_val, pred_val, num_points = 60):
    real_vec = real_val[:num_points,0]
    pred_vec = pred_val[:num_points,0]
    pred_val = pred_val[:num_points,]
    plt.figure(figsize=(20,15))
    plt.plot(real_vec, color = 'g', label='Real')
    plt.plot(pred_vec, color = 'b', label='Pred 1 value')
    #for i in range(pred_val.shape[0]):
    #    plt.plot(range(i,i+3), pred_val[i,:3], color='r')
    
    plt.show()

def arg_setting(): 
    parser = argparse.ArgumentParser(description='Use trained LSTM model to predict stock prices')
    defaultDir = os.path.join(dirPath, '../../results/example_data')
    parser.add_argument(
        '-d',
        '--datadir',
        default=defaultDir,
        help='Directory containing all files for trained model (string), default='+defaultDir
    )
    cmd_args = parser.parse_args()
    data_dir = cmd_args.datadir
    
    return data_dir

def getYahooFinanceData(stockList):
    curTime = datetime.now().strftime('%Y-%m-%d %H:%M')
    dur = pd.date_range(start=curTime, periods=2, freq='1min', tz= "Europe/Stockholm") 
    prevDay =  datetime.now() - timedelta(days=1)   
    df = yf.download(' '.join(stockList), start=prevDay, end=curDay, interval='1m', period='ytd')   
    curMinData = df.loc[df.index > dur[0],:]   

def getStartingDataOld():
    stockList = ['HM-B.ST', '^OMXC20', '^OMXC25', '^OMXH25', '^OMXHPI', '^OMX']

    stockIds = list()
    stockIdFile = join(dirPath,'../conf/avanzaStockIds.json')
    with open(stockIdFile, "r") as content:
        stockJson = json.load(content)
    for s in stockList:
        try:
            stockIds.append(int(stockJson[s]))
        except:
            print('Error: Stock ' + s + ' not present in the stockID file. Exiting...')
            exit(1)
    stockDf = download_1min_data(stockIds)
    return stockDf

def prepareData(df, dbIds):
    dd=df.pivot_table(index=['UpdatedOn'], columns='Ticker')
    stockProp = list(['Open', 'High', 'Low', 'Close', 'Volume'])
    mat = pd.DataFrame()
    for i in stockProp:
        mat = pd.concat([mat, dd[i][eval(dbIds[0])]], axis=1)

    indices = list(['OMXC20','OMXC25','OMXH25','OMXHPI','OMXS30'])
    #for i in indices:
    mat = pd.concat([mat, dd['Volume'][list(['OMXC20','OMXC25','OMXH25','OMXHPI','OMXS30'])]], axis=1)
    matColumns = pd.Index(stockProp + [i+'.Volume' for i in indices])
    mat.columns =  matColumns #stockProp + [i+'.Volume' for i in indices]
    #mat = pd.concat([dd['Close'][dbIds[0]], dd['High']['HM B'], dd['Low']['HM B'] dd['Close']['HM B'] dd['Volume']['HM B']])
    return mat

def getStartingData(claTrain, scaler):
    stockList = ['HM-B.ST', '^OMXC20', '^OMXC25', '^OMXH25', '^OMXHPI', '^OMX']
    dbIds = ["'HM B'", "'OMXC20'", "'OMXC25'", "'OMXH25'", "'OMXHPI'", "'OMXS30'"]

    timeSteps = int(claTrain['timesteps'])
    batchSize = int(claTrain['batchsize'])
    predLength = int(claTrain['predlen'])
    predStep = int(claTrain['predstep'])
    predColId = int(claTrain['predcolnum'])
    endIndex = timeSteps+batchSize+predStep+predLength-1

    dbConn = start_mysql_connection()

    query = 'select * from Avanza where Ticker in (' + ", ".join(dbIds) + ') Order by UpdatedOn desc limit 2000'; #HM B', 'OMXC20', 'OMXC25', 'OMXH25', 'OMXHPI', 'OMXS30') Order by UpdatedOn desc limit 10;
    df = readDataFromMySQL(query=query)
    #df = df.iloc[endIndex,:]

    df.UpdatedOn = pd.to_datetime(df.UpdatedOn)
    mat = prepareData(df, dbIds)
    #df = df.set_index('UpdatedOn')
    
    #mat = mat.set_index('Datetime')
    #matNormalized = scaler.transform(mat)
    matNormalized = mat.values
    matNormalized = matNormalized[:endIndex, :]

    x, y = buildTimeseries(matNormalized, predLength, predStep, predColId, timeSteps)

    return x
        

def getCurrentStockPrice(curTime, df, claTrain, scaler):
    curMin = curTime.strftime('%Y-%m-%d %H:%M')
    timeSteps = int(claTrain['timesteps'])
    batchSize = int(claTrain['batchsize'])
    predLength = int(claTrain['predlen'])
    predStep = int(claTrain['predstep'])
    predColId = int(claTrain['predcolnum'])

    #nextMin = (curTime+timedelta(minutes=1)).strftime('%Y-%m-%d %H:%M')
    #curStockValue = df.loc[curMin]
    startIndex = df.index[df['Datetime'] == curMin]
    if startIndex.shape[0] > 0:
        startIndex = startIndex.tolist()[0]
        endIndex = startIndex+timeSteps+batchSize+predStep+predLength-2
        mat = df.loc[startIndex:endIndex,:]
        mat = mat.set_index('Datetime')
        matNormalized = scaler.transform(mat)
        x, y = buildTimeseries(matNormalized, predLength, predStep, predColId, timeSteps)

        return x
    else:
        return None

def readStoredCLAFile(filename):
    with open(filename, 'r') as jsonFile: 
        data=jsonFile.read()

    jsonData = json.loads(data)
    return jsonData

def main():
    data_dir = arg_setting()
    scaler = joblib.load(join(data_dir,'minMaxScaler.pkl'))

    # read program arguments file
    claTrain = readStoredCLAFile(join(data_dir, 'programArgs.json'))
    
    curStockBatch = getStartingData(claTrain, scaler)

    model = load_lstm_model(join(data_dir,'trained_model.h5'))
    batchSize = model.layers[0].input_shape[0]
    
    print(model.summary())

    curMin = pd.to_datetime('2020-04-14 13:29')
    dfValid = pd.read_pickle(join(data_dir,'dfValid.pkl'))
    dfValid['Datetime'] = pd.to_datetime(dfValid['Datetime'], format="%Y-%m-%d %H:%M")
    #dfValid = dfValid.set_index('Datetime')
    dfValid = dfValid.reset_index(drop = True)

    curStockValue = 0.0
    while True:
        nextMin = (curMin+timedelta(minutes=1))
        curStockBatch = getCurrentStockPrice(curMin, dfValid, claTrain, scaler)

        if curStockBatch is not None:       
            pred = model.predict(curStockBatch, batch_size=batchSize)
            predScaled = rescale_values(pred, scaler)
            predScaled = predScaled.reshape(-1)

            try:
                realScaled = dfValid[dfValid.Datetime == nextMin.strftime('%Y-%m-%d %H:%M')]


                if realScaled.shape[0] > 0:
                    realScaled = realScaled[claTrain['stockname']+'_Close'].values[0]
                    
                    movement = 'NO CHANGE'
                    if realScaled > curStockValue:
                        movement = 'UP'
                    elif realScaled < curStockValue:
                        movement = 'DOWN'
                    
                    print('('+curMin.strftime('%Y-%m-%d %H:%M')+') Prediction is ' + str(predScaled[-1]) + '. Real is ' + str(realScaled) + ' [' + movement + ']')
                    print('----------------------------------------------------------------')
                    curStockValue = realScaled
            except Exception as e:
                print(e)
                pass

        curMin = nextMin
        sleep(0.5)

    #real, pred = make_predictions(model, x_valid)

    #real_val = rescale_values(real, scaler)
    #pred_val = rescale_values(pred, scaler)
    
    #print('Plotting the prediction vs real')
    #plot_real_vs_pred(real_val, pred_val)
    #print('Program completed...')

if __name__ == '__main__':
    main()

