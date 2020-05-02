import avanza
import os, glob
import pandas as pd
import numpy as np
from datetime import datetime, timedelta
import mysql.connector
from sqlalchemy import create_engine    
import pymysql 

def readDataFromMySQL(query, username='ikramu', passwd='Lums1234', hostname='localhost', db = 'stocks'):
    db_connection_str = 'mysql+pymysql://' + username + ':' + passwd + '@' + hostname + '/' + db
    db_connection = create_engine(db_connection_str) 
    conn = db_connection.connect()
    df = pd.read_sql(query, con=db_connection) 
    conn.close()
    return df

def writeYahooFinanceDataToDB(stockDir, tableName, username='ikramu', passwd='Lums1234', hostname='localhost', db = 'yfinance'):
    db_connection_str = 'mysql+pymysql://' + username + ':' + passwd + '@' + hostname + '/' + db
    for i in glob.glob(stockDir+"*.csv"): 
        df = pd.read_csv(i) 
        ticker = os.path.basename(i)
        ticker = ticker.replace('_1m.csv', '')
        df['Ticker'] = ticker
        df.Datetime = pd.to_datetime(df.Datetime, format = "%Y-%m-%d %H:%M")
        df.to_sql(tableName, con = db_connection_str, if_exists='append')
        print('Wrote ' + ticker + ' to DB')
    print('Done for all tables')


def start_mysql_connection():
    mydb = mysql.connector.connect(
    host="localhost",
    user="ikramu",
    passwd="Lums1234",
    database="stocks"
    )
    return mydb

def download_1min_data(ticker_ids):
    cols = ['Open', 'High', 'Low', 'Close', 'Volume']
    ticker_df = pd.DataFrame(np.zeros([len(ticker_ids),len(cols)+3]))
    ticker_df.columns = ['UpdatedOn', 'Ticker', 'Open', 'High', 'Low', 
    'Close', 'Volume', 'ListedExchange']
    now = datetime.now()
    try:
        for i in range(len(ticker_ids)):
            tid = ticker_ids[i]
            tck = avanza.Ticker(tid)
            ticker_df['Ticker'][i] = tck.symbol
            ticker_df['Volume'][i] = tck.info['totalVolumeTraded']
            last_updated = datetime.strptime(tck.last_price_updated, "%Y-%m-%dT%H:%M:%S.%f+0200")
            exch = tck.country
            if(tid < 35000):
                ticker_df['High'][i] = tck.highest_price
                ticker_df['Low'][i] = tck.lowest_price
                ticker_df['Open'][i] = tck.data['buyPrice']
                ticker_df['Close'][i] = tck.last_price
        
        ticker_df['Volume'] = ticker_df['Volume'].astype(int)
        ticker_df['UpdatedOn'] = now.strftime('%Y-%m-%d %H:%M:00')
        ticker_df['ListedExchange'] = 'USA'
        return ticker_df
    except:
        print(now + ': Some of the entries are yet populated. Skipping current record')
        return None
    