import requests
import os, yaml, argparse
import pandas as pd
import numpy as np
from time import sleep
from datetime import datetime, timedelta
import pause 
import mysql.connector

"""
We have used the following query to create table in MySQL
CREATE TABLE crypto (
Datetime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
Ticker VARCHAR(50) NOT NULL,
shortName VARCHAR(80) NOT NULL, 
regularMarketOpen decimal(50,2), 
regularMarketDayHigh decimal(50,2), 
regularMarketDayLow decimal(50,2), 
regularMarketPreviousClose decimal(50,2), 
regularMarketVolume bigint, 
regularMarketChange decimal(50,2),
regularMarketChangePercent decimal(50,2),
fullExchangeName varchar(30) NOT NULL DEFAULT "US",  
PRIMARY KEY (Datetime, Ticker)
);
"""

class Crawler(object):
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
        self.dbColumns = ['Datetime', 'Ticker', 'shortName', 'regularMarketOpen', 
                        'regularMarketDayHigh', 'regularMarketDayLow', 'regularMarketPreviousClose', 
                        'regularMarketVolume', 'regularMarketChange', 'regularMarketChangePercent','fullExchangeName']

    def start_mysql_connection(self):
        self.mydb = mysql.connector.connect(
        host=self.dbHost,
        user=self.dbUser,
        passwd=self.dbPasswd,
        database=self.dbName
        )
        self.mycursor = self.mydb.cursor()
        print('MySQL connection established')

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
            
            self.saveOneMinuteData(ticker_df, self.dbColumns)
            #sleep(50)
        except Exception as e:
            print('(' + now.strftime('%Y-%m-%d %H:%M') + '):' + str(e) )#Some of the entries are yet populated. Skipping current record')
            pass

    def saveOneMinuteData(self, df, colNames):
        self.start_mysql_connection()
        #sql = "INSERT INTO Yahoo (UpdatedOn, Ticker, Name, Open, High, Low, Close, Volume, PriceChange, PriceChangePct, ListedExchange) 
        # VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
        sql = 'INSERT IGNORE INTO ' + self.tableName + '(' + ', '.join(self.dbColumns) 
        sql += ') VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)'
        try:
            for i in range(df.shape[0]):
                v = df.iloc[i,:]
                val = (v['Datetime'], v['Ticker'], v['shortName'], str(v['regularMarketOpen']), str(v['regularMarketDayHigh']), 
                        str(v['regularMarketDayLow']), str(v['regularMarketPreviousClose']), str(v['regularMarketVolume']),
                        str(v['regularMarketChange']),str(v['regularMarketChangePercent']), str(v['fullExchangeName']))
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

def readCommandLineArgs():
        parser = argparse.ArgumentParser(description='Crawler for stock data downlading')
        parser.add_argument(
            '-m',
            '--market',
            default='crypto',
            help='Market type (se, us, or crypto) (string), default=\"crypto\"'
        )

        cmd_args = parser.parse_args()
        #print("Number of minutes to predict: ", cmd_args.predlen)
        market_type = str(cmd_args.market)
        
        return cmd_args, market_type

if __name__ == '__main__':
    args, marketType = readCommandLineArgs()

    dir_path = os.path.dirname(os.path.realpath(__file__))
    tickerList = list()
    with open(dir_path+'/../conf/stocks_info.yaml') as file:
        documents = yaml.full_load(file)
    
    tickerList = documents[marketType]
    dbInfo = documents['dbInfo']
    tableName = dbInfo['tableName'][marketType]

    crawler = Crawler(tickerList, dbHost = dbInfo['dbHost'], dbUser = dbInfo['dbUser'],
                 dbPasswd = dbInfo['dbPasswd'], dbName = dbInfo['dbName'], tableName = tableName)
    crawler.startCrawler()