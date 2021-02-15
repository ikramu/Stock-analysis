import os
import yaml
import pandas as pd
import yfinance as yf
from time import sleep
from datetime import datetime, timedelta

from dataReader import DataReader

class TrainDataReader(DataReader):
    """ class for reading finance data for training
    """ 
    def __init__(self, dbHost, dbUser, dbPasswd, dbName, dbTable, stocks):
        super().__init__(dbHost, dbUser, dbPasswd, dbName)
        self._dbTable = dbTable
        self._stocks = stocks

    def download_max_stock_data(self, interval = '1m', end_date = datetime.now(), dayDelta = 7, table = None, of_pref='/tmp/stock_'):
        if table is None:
            table = self._dbTable
        enddate = end_date
        for stock in self._stocks:
            end_date = enddate
            data_remaining = True
            last_date_stock = self.get_last_saved_stock_date(stock, table)
            bigdf = pd.DataFrame()
            
            while data_remaining:
                start_date = end_date - timedelta(days=dayDelta)
                if start_date < last_date_stock:
                    data_remaining = False

                df = yf.download(stock+'.ST', start=start_date, end=end_date, interval=interval)
                if(df.shape[0] == 0):
                    print('No more data available, exiting out of current loop...')
                    print('**************************************')
                    break
                bigdf = pd.concat([bigdf, df]) 
                print('No of rows between ' + str(start_date) + ' and ' + str(end_date) + ' are ' + str(df.shape))
                end_date = start_date
                sleep(2)
            if bigdf.shape[0] > 0:
                bigdf = bigdf.sort_index(ascending=True)
                bigdf['Datetime'] = bigdf.index 
                bigdf['Ticker']= stock
                bigdf = bigdf.reset_index(drop=True)
                bigdf = bigdf[['Datetime', 'Ticker', 'Open','High','Low','Close','Volume']]
                outfile = of_pref + stock + '.csv'
                bigdf.to_csv(outfile, header=True, index=False)
                self.saveStockData(table, bigdf)
            else:
                print('No data for ' + stock + ' to save until ' + str(end_date))
    
    def get_last_saved_stock_date(self, stock, table):
        self.start_mysql_connection()
        #sql = "SELECT * from " + self._dbTable + " where Ticker = '" + stock + "' ORDER BY Datetime DESC limit 10"
        sql = "SELECT * from `" + table + "` where Ticker = '" + stock + "' ORDER BY Datetime DESC limit 10"
        res = pd.read_sql(sql, self._mydb)
        if res.shape[0] > 0:
            return pd.to_datetime(res['Datetime'][0])
        else:
            return pd.to_datetime('1970-01-30 00:00:00') 
        
        self._mydb.close()
        print('MySQL connection closed successfully')

    def execute_sql_command(self, sql):
        self.start_mysql_connection()
        self._mycursor.execute(sql, multi = True)
        try:
            self._mydb.commit()
        except Exception as e:
            print('################################################################')
            print(e)
            print('ERROR: Could not execute the sql command')
            self._mydb.rollback()
            print('################################################################')
        self._mydb.close()
        print('MySQL connection closed successfully')

    # Update 20210214: For low-resolution data (such as hourly/daily) for all OMX stock (which are in hundreds),  
    # We will save each stock data in its own table. Therefore, we will send table info in function signature
    # Previously, one table was sent in class definition and used for all stocks in question
    def saveStockData(self, table, df):
        self.start_mysql_connection()
        #sql = 'INSERT IGNORE INTO ' + self._dbTable + '(' + ', '.join(df.columns) 
        sql = 'INSERT IGNORE INTO `' + table + '`(' + ', '.join(df.columns) 
        sql += ') VALUES (%s, %s, %s, %s, %s, %s, %s)' 
        try:
            df=df.astype({'Datetime': str}) 
            self._mycursor.executemany(sql, df.values.tolist())
            self._mydb.commit()
            print(df.iloc[-1,:]['Ticker'] + ': data until ' + str(df.iloc[-1,:]['Datetime']) + ' written')
            '''
            for i in range(df.shape[0]):
                v = df.iloc[i,:]
                val = (v['Datetime'], str(v['Ticker']), str(v['Open']), str(v['High']), str(v['Low']), 
                        str(v['Close']), str(v['Volume']))
                self._mycursor.execute(sql, val)
            self._mydb.commit()
            print(v['Datetime'] + ': wrote data for minute tick') 
            '''
        except Exception as e:
            print('################################################################')
            print(e)
            print('ERROR: Could not write to ' + self._mydb.database + ' database')
            self._mydb.rollback()
            print('Trying again in 1 minute...')
            print('################################################################')
        self._mydb.close()
        print('MySQL connection closed successfully')

    def readStockData(self, end_date = datetime.now()):
        start_date = end_date - timedelta(days=30)
        self.start_mysql_connection()
        command = "select Datetime, Ticker, Close from seTrain where Ticker in ('" + "','".join(self._stocks) + "') and Datetime BETWEEN ' + str(start_date) + ' and curdate();"
        result = pd.read_sql(command, self._mydb)
        #self._mycursor.execute(command)
        #result = self._mycursor.fetchall()
        
        return result
