import requests
import os, yaml, argparse
import pandas as pd
import numpy as np
from time import sleep
from datetime import datetime, timedelta
import pause 
import yfinance as yf
import mysql.connector

class BulkDownloader(object):
    """Crawl Yahoo Finance for stock data
                                                                                                                                                                                                                   
    Args:                                                                                                                                                                                                          
        ticker_id_list (int): list of Yahoo ticker IDs
    """
    def __init__(self, tickerList, dbHost, dbUser, 
                dbPasswd, dbName, tableName, **kwargs):
        super().__init__()
        self.tickerList = tickerList
        self.dbHost = dbHost
        self.dbUser = dbUser
        self.dbPasswd = dbPasswd
        self.dbName = dbName
        self.tableName = tableName
        self.dbColumns = ['Datetime', 'Ticker', 'Open', 'High', 'Low', 'Close', 'Volume']

    def start_mysql_connection(self):
        self.mydb = mysql.connector.connect(
        host=self.dbHost,
        user=self.dbUser,
        passwd=self.dbPasswd,
        database=self.dbName
        )
        self.mycursor = self.mydb.cursor()
        print('MySQL connection established')

    def download_max_stock_data(self, stock_name, interval='1m', noOfDays=7, 
                                end_date=datetime.now(), table = None, outfile='/tmp/stocks.log'):
        if table is None:
            table = self.tableName

        print('We will save the output to ', outfile)
        bigdf = pd.DataFrame()

        while True:
            start_date = end_date - timedelta(days=7)
            df = yf.download(stock_name, start=start_date, end=end_date, interval=interval)
            #df = get_stock_data(stock_name=stock_name, start_date=start_date, end_date=end_date, interval=interval)
            if(df.shape[0] == 0):
                print('No more data available, exiting out of current loop...')
                print('**************************************')
                break
            bigdf = pd.concat([bigdf, df]) 
            print('No of rows between ' + str(start_date) + ' and ' + str(end_date) + ' are ' + str(df.shape))
            end_date = start_date
            sleep(2)

        bigdf = bigdf.sort_index(ascending=True)
        bigdf['Datetime'] = bigdf.index 
        bigdf['Ticker']= stock_name
        bigdf = bigdf.reset_index(drop=True)
        bigdf = bigdf[['Datetime', 'Ticker', 'Open','High','Low','Close','Volume']]
        #bigdf.rename(columns = {'Adj Close': 'AdjClose'})
        bigdf.to_csv(outfile, header=True, index=False)
        self.saveOneMinuteData(bigdf, table)

    def downloadOneMinData(self, now):
        
        ticker_df = pd.DataFrame(np.zeros([len(self.tickerList),len(self.dbColumns)]))
        ticker_df.columns = self.dbColumns
        ticker_df = ticker_df.set_index([pd.Index(self.tickerList)])
        ticker_df['Datetime'] = ''
        

        # IMPORTANT: We can use either query1 or query2 to download json object
        # https://query1.finance.yahoo.com/v7/finance/options/HM-B.ST
        # https://query2.finance.yahoo.com/v7/finance/options/HM-B.ST

        #i = 0
        try:
            for i in self.tickerList:
                #tData = yf.Ticker(ticker).info       
                print('Downloading data for ' + i)
                r = requests.get('https://query2.finance.yahoo.com/v7/finance/options/'+i)
                tData = r.json()['optionChain']['result'][0]['quote']
                
                ticker_df.loc[i,'Ticker'] = i
                for j in self.dbColumns[2:]:
                    ticker_df.loc[i,j] = tData[j]
                ticker_df.loc[i, 'Datetime'] = datetime.fromtimestamp(
                        tData['regularMarketTime']).strftime('%Y-%m-%d %H:%M') 
            
            ticker_df['regularMarketVolume'] = ticker_df['regularMarketVolume'].astype(int)
            ticker_df['regularMarketChange'] = ticker_df['regularMarketChange'].astype(float)
            ticker_df['regularMarketChangePercent'] = ticker_df['regularMarketChangePercent'].astype(float)
            #ticker_df['Datetime'] = datetime.fromtimestamp(
            #            tData['regularMarketTime']).strftime('%Y-%m-%d %H:%M')  
            
            self.saveOneMinuteData(ticker_df, self.tableName, self.dbColumns)
            #sleep(50)
        except Exception as e:
            print('(' + now.strftime('%Y-%m-%d %H:%M') + '):' + str(e) )#Some of the entries are yet populated. Skipping current record')
            pass
    
    # Update 20210214: For low-resolution data (such as hourly/daily) for all OMX stock (which are in hundreds),  
    # We will save each stock data in its own table. Therefore, we will send table info in function signature
    # Previously, one table was sent in class definition and used for all stocks in question
    def saveOneMinuteData(self, table, df):
        self.start_mysql_connection()
        #sql = "INSERT INTO Yahoo (UpdatedOn, Ticker, Name, Open, High, Low, Close, Volume, PriceChange, PriceChangePct, ListedExchange) 
        # VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
        sql = 'INSERT IGNORE INTO ' + self.tableName + '(' + ', '.join(self.dbColumns) 
        sql += ') VALUES (%s, %s, %s, %s, %s, %s, %s)' #, %s, %s, %s, %s)'
        try:
            for i in range(df.shape[0]):
                v = df.iloc[i,:]
                val = (str(v['Datetime']), str(v['Ticker']), str(v['Open']), str(v['High']), str(v['Low']), 
                        str(v['Close']), str(v['Volume']))
                self.mycursor.execute(sql, val)
            self.mydb.commit()
            print(v['Datetime'] + ': wrote data for minute tick') # last v is still valid
        except Exception as e:
            print('################################################################')
            print(e)
            print('ERROR: Could not write to ' + self.mydb.database + ' database')
            self.mydb.rollback()
            print('Trying again in 1 minute...')
            print('################################################################')
        self.mydb.close()
        print('MySQL connection closed successfully')

    def startCrawler(self):
        now = datetime.now()
        print('Crawler started at ' + now.strftime('%Y-%m-%d %H:%M:00'))
        while True:
            self.downloadOneMinData(now)
            now = now + timedelta(minutes=1)
            print('Fetching next record at ' + now.strftime('%Y-%m-%d %H:%M:00'))
            pause.until(now)

bd = BulkDownloader(['HM-B.ST', 'SAND.ST', 'ASSA-B.ST', 'ABB.ST', 'ATCO-B.ST', '^OMXC20', '^OMXS30'], 
                os.environ["dbHost"], os.environ["dbUser"], 
                os.environ["dbPasswd"], "testStocks", "se")
bd.download_max_stock_data(stock_name="HM-B.ST", interval='1m', noOfDays=7, end_date=datetime.now(), outfile='/tmp/stocks.log')