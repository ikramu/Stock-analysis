import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from tqdm import tqdm_notebook
import tensorflow as tf
import os, re
from lib.db import *

from sklearn.preprocessing import MinMaxScaler
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error
import joblib

from keras.models import Sequential
from keras.callbacks import CSVLogger
from keras.layers import Dense, Embedding, LSTM, Dropout
from keras import optimizers

def normalizeWithValidationData(train, valid, test):
    train_cols = train.columns[1:]
    
    # scale the feature MinMax, build array
    x = train.loc[:,train_cols].values
    min_max_scaler = MinMaxScaler()
    x_train = min_max_scaler.fit_transform(x)
    x_valid = min_max_scaler.transform(valid.loc[:,train_cols])
    x_test = min_max_scaler.transform(test.loc[:,train_cols])
    
    return x_train, x_valid, x_test, min_max_scaler

def buildTimeseries(mat, pred_len, pred_step, pred_col_id, time_steps):
    # We skip the pred_step so it needs to be catered in for-loop
    # pred_col_id is the index of column that would act as output column
    # total number of time-series samples would be len(mat) - TIME_STEPS
    dim_0 = mat.shape[0] - time_steps - pred_step - pred_len + 1
    dim_1 = mat.shape[1]
    x = np.zeros((dim_0, time_steps, dim_1))
    y = np.zeros((dim_0,pred_len))
    #print(y.shape)
    #print(mat[time_steps+1:time_steps+1+pred_len, pred_col_id].reshape(1,pred_len).shape)
    
    #for i in tqdm_notebook(range(dim_0-pred_len-pred_step)):
    for i in tqdm_notebook(range(x.shape[0])):
        x[i] = mat[i:time_steps+i]
        y[i] = mat[time_steps+i+pred_step:time_steps+i+pred_step+pred_len, pred_col_id].reshape(pred_len,)
    #print("length of time-series i/o",x.shape,y.shape)
    return x, y

def trimDataset(mat, batch_size):
    """
    trims dataset to a size that's divisible by BATCH_SIZE
    """
    no_of_rows_drop = mat.shape[0]%batch_size
    if(no_of_rows_drop > 0):
        return mat[no_of_rows_drop:], no_of_rows_drop
    else:
        return mat, no_of_rows_drop

def buildLSTMModel(train_data, pred_len, BATCH_SIZE, TIME_STEPS):  
    model = Sequential()
    model.add(LSTM(150, batch_input_shape=(BATCH_SIZE, TIME_STEPS, 
    train_data.shape[2]), dropout=0.0, recurrent_dropout=0.0, 
    stateful=True, kernel_initializer='random_uniform'))
    model.add(Dropout(0.5))
    model.add(Dense(40,activation='relu'))
    model.add(Dense(pred_len,activation='sigmoid'))
    optimizer = optimizers.RMSprop(lr=0.001)
    model.compile(loss='mean_squared_error', optimizer=optimizer)
    return model

def plotRealVsPred(pred, real, error, outfile):
    plt.figure(figsize=(20,15))
    plt.plot(pred)
    plt.plot(real)
    plt.title('Prediction vs Real Stock Price (Sq. Error: ' + str(error) + ')')
    plt.ylabel('Price (in SEK)')
    plt.xlabel('Minutes')
    plt.legend(['Prediction', 'Real'], loc='upper left')
    plt.savefig(outfile, dpi = 100)   # save the figure to file
    #plt.close(fig)  

def plotAccuracyLoss(history, outdir):
    # plot accuracy
    #plt.plot(history.history['acc'])
    #plt.plot(history.history['val_acc'])
    #plt.title('Model accuracy')
    #plt.ylabel('Accuracy')
    #plt.xlabel('Epoch')
    #plt.legend(['Training', 'Validation'], loc='upper left')
    #plt.savefig(outfile_pref+'_accuracy.png')
    #plt.show()

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
    #plt.show()


def readSelectedData(stock_name, interval = '1m', datadir = 'data/', first_stock = False):
    colnames = ['Open', 'High', 'Low', 'Close', 'Adj Close', 'Volume']
    #filename = datadir + stock_name + '_' + interval + '.csv'
    filename = os.path.join(datadir, stock_name+'_'+interval+'.csv')
    print(filename)
    data = pd.read_csv(filename)
    cols = list(data.columns)[1:] 
    if colnames == cols:
        ll = list([stock_name+'_'+x for x in cols])
        cnames = ['Datetime'] + ll
        data.columns = cnames
    else:
        print('Columns are not in order')
    # select only the Adj Close and Volume
    #if re.search('\^', stock_name) is not None:
    if first_stock:
        data = data.iloc[:, [0,1,2,3,4,6]]
    #    data = data.iloc[:, [0,5,6]]
    else:
        data = data.iloc[:, [0,4]]
        #data = data.iloc[:, [0,1,2,3,4,6]]
    
    return data

def getStockDataFromDb(stockList, dbInfoFile, marketType = 'se'):
    stockDb = StockDB(stockList, dbInfoFile, marketType = marketType)
    df = stockDb._getTrainingData_()
    merged_df = df[df.Ticker == stockList[0]]
    merged_df = merged_df[['Datetime', 'Open', 'High', 'Low', 'Close','Volume']]
    for i in pd.unique(df.Ticker):
        if i != stockList[0]:
            dt = df[df.Ticker == i]
            dt = dt[['Datetime', 'Close']]
            dt.columns = ['Datetime', i]
            merged_df = merged_df.merge(dt, on = 'Datetime')
    return merged_df
    

def getFullData(stock_list, interval = '1m', datadir = 'data/'):
    data_dic = dict()
    counter = 0
    for i in stock_list:
        print('reading data for ' + i)
        if counter == 0:
            data_dic[i] = readSelectedData(i, interval, datadir, first_stock = True)
            counter = counter + 1
        else:
            data_dic[i] = readSelectedData(i, interval, datadir)
    
    merged_df = data_dic[stock_list[0]]

    for i in range(1, len(stock_list)):
        merged_df = merged_df.merge(data_dic[stock_list[i]], on = 'Datetime')
    
    return merged_df

#Get the data and splits in input X and output Y, by spliting in `n` past days as input X 
#and `m` coming days as Y.
def splitTrainValidationTest(data, time_steps, pred_len, train_ratio = 0.8):
    train_size = int(data.shape[0] * train_ratio)
    val_size = int(data.shape[0] * ((1 - train_ratio)/2.0))
    train_data = data[:train_size]
    valid_data = data[train_size-time_steps:train_size-time_steps+val_size]
    test_data = data[train_size-time_steps+val_size:]

    return train_data, valid_data, test_data
