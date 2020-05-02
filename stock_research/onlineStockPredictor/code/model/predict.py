from datetime import datetime, timedelta
import os, joblib, argparse
import yaml, json
import numpy as np
import pandas as pd
from time import sleep
import requests
from os.path import join, dirname, realpath

from keras.models import load_model

dirPath = dirname(realpath(__file__))

def arg_setting(): 
    parser = argparse.ArgumentParser(description='Use trained LSTM model to predict stock prices')
    parser.add_argument(
        '-d',
        '--datadir',
        default='../../results/se/',
        help='Directory containing all files for trained model (string), default=../../results/se/'
    )
    cmd_args = parser.parse_args()
    data_dir = cmd_args.datadir
    
    return data_dir

def load_lstm_model(path):
    dir_path = dirname(realpath(__file__))
    full_model_path = join(dir_path, path)
    model = load_model(full_model_path)

    return model

def readStoredCLAFile(filename):
    with open(filename, 'r') as yamlFile: 
        data=jsonFile.read()

    jsonData = json.loads(data)
    return jsonData

def rescale_values(arr, min_max_scaler):
    # Predicted column is the first one in data, i.e., 0
    arr_orig = (arr * min_max_scaler.data_range_[0]) + min_max_scaler.data_min_[0] 
    return arr_orig

def downloadOneMinData(tickerList):
    cols = ['shortName', 'regularMarketOpen', 'regularMarketDayHigh', 'regularMarketDayLow', 
            'regularMarketPreviousClose', 'regularMarketVolume']
    ticker_df = pd.DataFrame(np.zeros([len(tickerList),len(cols)+2]))
    ticker_df.columns = list(['Datetime', 'Ticker'] + cols)
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
        ticker_df['Datetime'] = datetime.fromtimestamp(
                    tData['regularMarketTime']).strftime('%Y-%m-%d %H:%M')  
        
    except Exception as e:
        print('(' + now + '):' + str(e) )#Some of the entries are yet populated. Skipping current record')
        pass
    
    # create a dataframe for next tick 
    df = ticker_df.iloc[0,3:]
    pivot = ticker_df.pivot_table(index=['Datetime'], columns='Ticker')
    close = pivot['regularMarketPreviousClose'].loc[:,tickerList[1:]]
    mat = np.concatenate([df.values, close.values.reshape(-1,)])
    
    return mat

def main():
    data_dir = join(os.getcwd(), arg_setting())
    #data_dir = join(dirPath, arg_setting())
    curTime = datetime.now()
    
    claArgs = join(data_dir, 'programArgs.yaml')
    with open(claArgs, 'r') as ifile:
        yaml_dict = yaml.safe_load(ifile)
    
    stockList = yaml_dict['stocks']
    scaler = joblib.load(join(data_dir,'minMaxScaler.pkl'))

    model = load_lstm_model(join(data_dir,'trained_model.h5'))
    batchSize = model.layers[0].input_shape[0]
    print(model.summary())

    xtest = np.load(join(data_dir, 'x_ts.npy'))
    normalizeBatch=xtest[-batchSize:]

    curStockValue = 0.0
    real_value = -1
    movement = 'NO CHANGE'
    while True:
        
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
            print('('+ curTime +') Real is ' + str(real_value) + '\n')
            print('Waiting for 1 minute before next data fetching...')
            sleep(60)

        newStockBatch = downloadOneMinData(stockList)
        real_value = newStockBatch[int(yaml_dict['predcolnum'])]
        scaledBatch = scaler.transform(newStockBatch.reshape(1,-1))
        newMatrix = normalizeBatch[normalizeBatch.shape[0]-1,:,:]
        newMatrix = np.concatenate([newMatrix[1:,:], scaledBatch], axis=0)
        newMatrix = newMatrix.reshape(-1, newMatrix.shape[0], newMatrix.shape[1])
        normalizeBatch = np.concatenate([normalizeBatch[1:,:,:], newMatrix], axis=0)
        

if __name__ == '__main__':
    main()