import os, sys

# import local library functions
dirPath = os.path.dirname(os.path.realpath(__file__))
module_path = os.path.abspath(os.path.join(dirPath,'../'))
if module_path not in sys.path:
    sys.path.append(module_path)
from lib.preprocessing import *
from lib.dataIO import *
from dataDownloader.yahooDownloadEngine import *

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
    defaultDir = os.path.join(dirPath, '../../results/bitcoin_data')
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
    dd=df.pivot_table(index=['Datetime'], columns='Ticker')
    stockProp = list(['Open', 'High', 'Low', 'Close', 'Volume'])
    mat = pd.DataFrame()
    for i in range(0,4):
        mat = pd.concat([mat, dd[stockProp[i]][eval(dbIds[0])]], axis=1)
    # fill NaN by previous value but first set zeros to Nan for main stock
    mat[mat == 0] = np.NaN
    mat = mat.fillna(method='ffill')

    # now add Volume data
    mat = pd.concat([mat, dd[stockProp[i+1]][eval(dbIds[0])]], axis=1)
    indices = list(['^BCH-USD', '^BNB-USD', '^ETH-USD', '^LTC-USD', '^USDT-USD', '^XRP-USD'])
    mat = pd.concat([mat, dd['Volume'][indices]], axis=1)
    # fill NaN 0 for all NaN Volumes
    mat = mat.fillna(0)
    matColumns = pd.Index(stockProp + [i+'.Volume' for i in indices])
    mat.columns =  matColumns #stockProp + [i+'.Volume' for i in indices]
    #mat = pd.concat([dd['Close'][dbIds[0]], dd['High']['HM B'], dd['Low']['HM B'] dd['Close']['HM B'] dd['Volume']['HM B']])
    return mat

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

def getStartingData(claTrain, scaler, dbIds):
    timeSteps = int(claTrain['timesteps'])
    batchSize = int(claTrain['batchsize'])
    predLength = int(claTrain['predlen'])
    predStep = int(claTrain['predstep'])
    predColId = int(claTrain['predcolnum'])
    endIndex = timeSteps+batchSize+predStep+predLength-1

    query = 'select * from BitcoinMinuteData where Ticker in (' + ", ".join(dbIds) + ') Order by Datetime desc limit 2000'; #HM B', 'OMXC20', 'OMXC25', 'OMXH25', 'OMXHPI', 'OMXS30') Order by UpdatedOn desc limit 10;
    df = readDataFromMySQL(query=query, username='ikramu', passwd='Lums1234', hostname='localhost', db = 'yfinance')
    #df = df.iloc[endIndex,:]

    df.Datetime = pd.to_datetime(df.Datetime)
    mat = prepareData(df, dbIds)
    #df = df.set_index('UpdatedOn')
    
    #mat = mat.set_index('Datetime')
    #matNormalized = scaler.transform(mat)
    matNormalized = mat.values
    matNormalized = matNormalized[:endIndex, :]

    #x, y = buildTimeseries(matNormalized, predLength, predStep, predColId, timeSteps)
    #return x
    return matNormalized

def normalizeAndMakeTimeseries(df, claTrain, scaler):
    timeSteps = int(claTrain['timesteps'])
    predLength = int(claTrain['predlen'])
    predStep = int(claTrain['predstep'])
    predColId = int(claTrain['predcolnum'])

    matNormalized = scaler.transform(df)
    x, y = buildTimeseries(matNormalized, predLength, predStep, predColId, timeSteps)
    return x

def readStoredCLAFile(filename):
    with open(filename, 'r') as jsonFile: 
        data=jsonFile.read()

    jsonData = json.loads(data)
    return jsonData

def getNextStockValue(curStockBatch, dbIds):
    newDataArrived = False
    while not newDataArrived:
        query = 'select * from Avanza where Ticker in (' + ", ".join(dbIds) + ') Order by UpdatedOn desc limit 20'; 
        df = readDataFromMySQL(query=query)
        df.UpdatedOn = pd.to_datetime(df.UpdatedOn)
        mat = prepareData(df, dbIds)
        
        lastRow = curStockBatch[-1:,:]
        newRow = mat.values[-1:,]

        if np.array_equal(lastRow, newRow):
            print("New new data has yet arrived, let's wait for few moments...")
            sleep(5)
        else:
            newDataArrived = True

    updateBatch = np.delete(curStockBatch, (0), axis=0)
    updateBatch = np.vstack((updateBatch, mat.iloc[-1,:].values)) #np.concatenate(updateBatch, mat.iloc[-1,:].values)
    
    return updateBatch
        
def downloadOneMinData(tickerList):
    tickerList = [i.replace('\"', '').replace('^','') for i in tickerList]
    #cols = ['shortName', 'regularMarketOpen', 'regularMarketDayHigh', 'regularMarketDayLow', 'regularMarketPreviousClose', 
    #        'regularMarketVolume', 'regularMarketChange', 'regularMarketChangePercent']
    cols = ['shortName', 'regularMarketOpen', 'regularMarketDayHigh', 'regularMarketDayLow', 'regularMarketPreviousClose', 'regularMarketVolume']
    ticker_df = pd.DataFrame(np.zeros([len(tickerList),len(cols)+2]))
    ticker_df.columns = list(['UpdatedOn', 'Ticker'] + cols)
    #ticker_df.columns = ['UpdatedOn', 'Ticker', 'shortName', 'regularMarketOpen', 'regularMarketDayHigh', 
    #                    'regularMarketDayLow', 'regularMarketPreviousClose', 'regularMarketVolume', 
    #                    'regularMarketChange', 'regularMarketChangePercent' ,'fullExchangeName']
    ticker_df = ticker_df.set_index([pd.Index(tickerList)])
    now = datetime.now().strftime('%Y-%m-%d %H:%M:00')

    # IMPORTANT: We can use either query1 or query2 to download json object
    # https://query1.finance.yahoo.com/v7/finance/options/HM-B.ST
    # https://query2.finance.yahoo.com/v7/finance/options/HM-B.ST
    #i = 0
    try:
        for i in tickerList:
            #tData = yf.Ticker(ticker).info       
            print('Downloading data for ' + i)
            r = requests.get('https://query2.finance.yahoo.com/v7/finance/options/'+i)
            tData = json.loads(r.text)['optionChain']['result'][0]['quote']
            
            ticker_df.loc[i,'Ticker'] = i
            for j in cols:
                ticker_df.loc[i,j] = tData[j]
            #ticker_df.loc[i, 'fullExchangeName'] = tData['fullExchangeName']
            sleep(0.1)
        
        ticker_df['regularMarketVolume'] = ticker_df['regularMarketVolume'].astype(int)
        #ticker_df['regularMarketChange'] = ticker_df['regularMarketChange'].astype(float)
        #ticker_df['regularMarketChangePercent'] = ticker_df['regularMarketChangePercent'].astype(float)
        ticker_df['UpdatedOn'] = datetime.fromtimestamp(
                    tData['regularMarketTime']).strftime('%Y-%m-%d %H:%M')  
        
        #self.saveOneMinuteData(ticker_df)
        #sleep(50)
    except Exception as e:
        print('(' + now + '):' + str(e) )#Some of the entries are yet populated. Skipping current record')
        pass
    #ticker_df = ticker_df.iloc[:,[0,1,3,4,5,6,7]]

    # create a dataframe for next tick 
    df = ticker_df.iloc[0,3:]
    pivot = ticker_df.pivot_table(index=['UpdatedOn'], columns='Ticker')
    volume = pivot['regularMarketVolume'].loc[:,tickerList[1:]]
    mat = np.concatenate([df.values, volume.values.reshape(-1,)])
    print('New matrix created...')
    
    return mat
    #print('Waiting for 1 minute before next data fetching...')
    #sleep(60)

def main():
    data_dir = arg_setting()
    curTime = datetime.now()
    nextMin = (curTime+timedelta(minutes=1)).strftime('%Y-%m-%d %H:%M')
    stockList = list(['"BTC-USD"','"^BCH-USD"', '"^BNB-USD"', '"^ETH-USD"', '"^LTC-USD"', '"^USDT-USD"', '"^XRP-USD"'])
    
    #yd = YahooDownloader([i.replace('\"', '').replace('^','') for i in stockList])
    
    scaler = joblib.load(join(data_dir,'minMaxScaler.pkl'))

    # read program arguments file
    claTrain = readStoredCLAFile(join(data_dir, 'programArgs.json'))
    
    unNormalizedDataBatch = getStartingData(claTrain, scaler, stockList)

    model = load_lstm_model(join(data_dir,'trained_model.h5'))
    batchSize = model.layers[0].input_shape[0]
    
    print(model.summary())

    
    dfValid = pd.read_pickle(join(data_dir,'dfValid.pkl'))
    dfValid['Datetime'] = pd.to_datetime(dfValid['Datetime'], format="%Y-%m-%d %H:%M")
    #dfValid = dfValid.set_index('Datetime')
    dfValid = dfValid.reset_index(drop = True)

    curStockValue = 0.0
    curStockBatch = unNormalizedDataBatch
    movement = 'NO CHANGE'
    while True:
        #curStockBatch = getCurrentStockPrice(curMin, dfValid, claTrain, scaler)
        normalizeBatch = normalizeAndMakeTimeseries(curStockBatch, claTrain, scaler)
        if normalizeBatch is not None:       
            predUnscaled = model.predict(normalizeBatch, batch_size=batchSize)
            predScaled = rescale_values(predUnscaled, scaler)
            predScaled = predScaled.reshape(-1)
            prediction = predScaled[-1]
            
            if prediction > curStockValue:
                movement = 'UP'
            elif prediction < curStockValue:
                movement = 'DOWN'
            else:
                movement = 'NO CHANGE'

            curTime = datetime.now().strftime('%Y-%m-%d %H:%M')
            print('('+ curTime +') Prediction is ' + str(prediction) + ' [' + movement + ']\n')
            sleep(10)

        newStockBatch = downloadOneMinData(stockList)
        curStockBatch = np.concatenate([curStockBatch, newStockBatch.reshape(1,-1)], axis=0)
        curStockBatch = curStockBatch[1:,]
        

    #real, pred = make_predictions(model, x_valid)

    #real_val = rescale_values(real, scaler)
    #pred_val = rescale_values(pred, scaler)
    
    #print('Plotting the prediction vs real')
    #plot_real_vs_pred(real_val, pred_val)
    #print('Program completed...')

if __name__ == '__main__':
    main()

