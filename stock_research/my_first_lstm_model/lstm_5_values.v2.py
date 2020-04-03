import numpy as np
import pandas as pd
from datetime import datetime
import os
import re 
import argparse
import yfinance as yf
from sklearn.preprocessing import MinMaxScaler
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error

import tensorflow as tf
from keras.models import Sequential
from keras.callbacks import CSVLogger
from keras.layers import Dense, Embedding, LSTM, Dropout
from keras import optimizers

import matplotlib.pyplot as plt
import seaborn as sns
sns.set(color_codes=True)
sns.set(rc={'figure.figsize':(15,8)})
from tqdm import tqdm_notebook

def normalize_data(minutedata):
    #train_cols = ["Open","High","Low","Close","Volume"]
    train_cols = minutedata.columns[2:]
    df_train, df_test = train_test_split(minutedata, train_size=0.8, test_size=0.2, shuffle=False)
    print("Train and Test size are: ", len(df_train), " and ", len(df_test))
    
    # scale the feature MinMax, build array
    x = df_train.loc[:,train_cols].values
    min_max_scaler = MinMaxScaler()
    x_train = min_max_scaler.fit_transform(x)
    x_test = min_max_scaler.transform(df_test.loc[:,train_cols])
    return x_train, x_test, min_max_scaler

def build_timeseries(mat, num_steps, y_col_index, TIME_STEPS):
    # y_col_index is the index of column that would act as output column
    # total number of time-series samples would be len(mat) - TIME_STEPS
    dim_0 = mat.shape[0] - TIME_STEPS
    dim_1 = mat.shape[1]
    x = np.zeros((dim_0, TIME_STEPS, dim_1))
    y = np.zeros((dim_0,num_steps))
    #print(y.shape)
    #print(mat[TIME_STEPS+1:TIME_STEPS+1+num_steps, y_col_index].reshape(1,num_steps).shape)
    
    for i in tqdm_notebook(range(dim_0-num_steps)):
        x[i] = mat[i:TIME_STEPS+i]
        y[i] = mat[TIME_STEPS+i:TIME_STEPS+i+num_steps, y_col_index].reshape(num_steps,)
    print("length of time-series i/o",x.shape,y.shape)
    return x, y

def trim_dataset(mat, batch_size):
    """
    trims dataset to a size that's divisible by BATCH_SIZE
    """
    no_of_rows_drop = mat.shape[0]%batch_size
    if(no_of_rows_drop > 0):
        return mat[:-no_of_rows_drop]
    else:
        return mat

def build_lstm_model(train_data, BATCH_SIZE, TIME_STEPS):  
    model = Sequential()
    model.add(LSTM(90, batch_input_shape=(BATCH_SIZE, TIME_STEPS, train_data.shape[2]), dropout=0.0, recurrent_dropout=0.0, stateful=True, kernel_initializer='random_uniform'))
    model.add(Dropout(0.5))
    model.add(Dense(20,activation='relu'))
    model.add(Dense(5,activation='sigmoid'))
    optimizer = optimizers.RMSprop(lr=0.001)
    model.compile(loss='mean_squared_error', optimizer=optimizer)
    return model

def compute_sq_error(lstm_model, x_test_data, y_test_data, BATCH_SIZE):
    y_pred = lstm_model.predict(trim_dataset(x_test_data, BATCH_SIZE), batch_size=BATCH_SIZE)
    y_pred_mean = y_pred.mean(axis=1)
    y_test_t = trim_dataset(y_test_data, BATCH_SIZE)
    y_test_t_mean = y_test_t.mean(axis=1)
    error = mean_squared_error(y_test_t_mean, y_pred_mean)
    return error

def plot_real_vs_pred(pred, real, outfile):
    plt.figure()
    plt.plot(pred)
    plt.plot(real)
    plt.title('Prediction vs Real Stock Price')
    plt.ylabel('Price (in SEK)')
    plt.xlabel('Minutes')
    plt.legend(['Prediction', 'Real'], loc='upper left')
    plt.savefig(outfile)   # save the figure to file
    #plt.close(fig)  

def read_sel_data(stock_name, interval = '1m', datadir = 'data/'):
    colnames = ['Open', 'High', 'Low', 'Close', 'Adj Close', 'Volume']
    filename = datadir + stock_name + '_' + interval + '.csv'
    data = pd.read_csv(filename)
    cols = list(data.columns)[1:] 
    if colnames == cols:
        ll = list([stock_name+'_'+x for x in cols])
        cnames = ['Datetime'] + ll
        data.columns = cnames
    else:
        print('Columns are not in order')
    # select only the Adj Close and Volume
    if re.search('\^', stock_name) is None:
        data = data.iloc[:, [0,5,6]]
    else:
        data = data.iloc[:, [0,5]]
    
    return data

def get_full_data(stock_list, datadir = 'data/'):
    data_dic = dict()
    for i in stock_list:
        print('reading data for ' + i)
        data_dic[i] = read_sel_data(i, datadir)
    
    merged_df = data_dic[stock_list[0]]

    for i in range(1, len(stock_list)):
        merged_df = merged_df.merge(data_dic[stock_list[i]], on = 'Datetime')
    
    return merged_df

def arg_setting():
        now=datetime.now().strftime('%Y-%m-%d_%H-%M-%S')   
        outfigfile = 'figures/' + now + '_model_performance.png'
        parser = argparse.ArgumentParser(description='LSTM model to predict next 5 min stock prices')
        parser.add_argument(
            '-s',
            '--stockname',
            default='HM-B.SE',
            help='Stock name (string), default=\"HM-B.SE\"'
        )
        parser.add_argument(
            '-n',
            '--predlen',
            default='5',
            help='Number of steps to predict (int), default=5'
        )
        parser.add_argument(
            '-b',
            '--batchsize',
            default = '100',
            help = 'Batch size for the model (int), default=100'
        )

        parser.add_argument(
            '-t',
            '--timesteps',
            default='30',
            help='Time steps for the model (int), default=30'
        )
        
        parser.add_argument(
            '-l',
            '--logfile',
            default='log/'+now+'_model.log',
            help='Output file for storing logs (string), default=\"log/timestampped_lstm_model.log\"'
        )
        parser.add_argument(
            '-o',
            '--outplot',
            default='figures/' + now + '_model_performance.png',
            help='Output file for storing logs (string), default=\"log/timestampped_lstm_perf.png\"'
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
        batch_size = int(cmd_args.batchsize)
        timesteps = int(cmd_args.timesteps)
        logfile = str(cmd_args.logfile)
        outplot = str(cmd_args.outplot)
        epochs = int(cmd_args.epochs)

        return stock_name, pred_len, batch_size, timesteps, logfile, outplot, epochs
         
def main():
    stock_name, pred_len, batch_size, time_steps, log_file, out_plot, epochs = arg_setting()
    
    datadir = 'data/'
    ind_list = list(['^OMXC20', '^OMXC25', '^OMXH25', '^OMXHPI', '^OMX'])
    comp_list = list([stock_name]) + ind_list
    stock_data = get_full_data(comp_list, datadir)
    pred_col_id = 1
    
    # read data
    # stock_data = pd.read_csv(input_file)

    # normalize the stock data
    x_train, x_test, min_max_scaler = normalize_data(stock_data)

    ### Training data
    # build time-series
    x_t, y_t = build_timeseries(x_train, pred_len, pred_col_id, time_steps)
    # trim extra rows from training data
    x_t = trim_dataset(x_t, batch_size)
    y_t = trim_dataset(y_t, batch_size)

    ### Test data
    x_temp, y_temp = build_timeseries(x_test, pred_len, pred_col_id, time_steps)
    x_val, x_test_t = np.split(trim_dataset(x_temp, batch_size),2)
    y_val, y_test_t = np.split(trim_dataset(y_temp, batch_size),2)

    # build and run the LSTM model
    csv_logger = CSVLogger(os.path.join(log_file), append=True)
    lstm_model = build_lstm_model(x_t, batch_size, time_steps)
    history = lstm_model.fit(x_t, y_t, epochs=epochs, verbose=2, batch_size=batch_size,
                        shuffle=False, validation_data=(trim_dataset(x_val, batch_size),
                        trim_dataset(y_val, batch_size)), callbacks=[csv_logger])

    # compute model error
    y_pred = lstm_model.predict(trim_dataset(x_test_t, batch_size), batch_size=batch_size)
    y_pred_mean = y_pred.mean(axis=1)
    #y_pred = y_pred.flatten()
    y_test_t = trim_dataset(y_test_t, batch_size)
    y_test_t_mean = y_test_t.mean(axis=1)
    error = mean_squared_error(y_test_t_mean, y_pred_mean)
    print("Squared error of the model is", error)

    # de-normalize the prediction
    y_pred_mean = y_pred.mean(axis=1)
    y_pred_org = (y_pred_mean * min_max_scaler.data_range_[pred_col_id]) + min_max_scaler.data_min_[pred_col_id] 
    y_test_t_org = (y_test_t_mean * min_max_scaler.data_range_[pred_col_id]) + min_max_scaler.data_min_[pred_col_id]

    # plot the predicted vs real values
    outfile = 'figures/TS_'+str(time_steps)+'_BS_'+str(batch_size)+'_Error_'+str(round(error,5))+'.png'
    plot_real_vs_pred(y_pred_org, y_test_t_org, outfile)

    print('Analysis done. Check ' + outfile + ' for the plot')

if __name__ == '__main__':
    main()

if __name__ == '__main1__':
    stock_name, pred_len, batch_size, time_steps, log_file, out_plot, epochs = arg_setting()
    
    # let's add exchange indices 
    ind_list = list(['^OMXC20', '^OMXC25', '^OMXH25', '^OMXHPI', '^OMX'])
    comp_list = list([stock_name]) + ind_list
    dd = get_full_data(comp_list)