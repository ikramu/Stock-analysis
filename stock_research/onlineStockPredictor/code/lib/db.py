import mysql.connector
from datetime import datetime, timedelta
import pandas as pd
import os, yaml 

class StockDB(object):
    """Class to handle MySQL I/O for stock data
                                                                                                                                                                                                                   
    Args:                                                                                                                                                                                                          
        stockList: list of Yahoo stock IDs
        dbInfoFile: YAML file containing DB credentials
        marketType: one of us, se or crypto
    """
    def __init__(self, stockList, dbInfoFile, marketType = 'crypto'): 
        super().__init__()
        self.stockList = stockList

        with open(dbInfoFile, 'r') as dbFile:
            dbInfo = yaml.full_load(dbFile)
        self.dbHost = dbInfo['dbHost']
        self.dbUser = dbInfo['dbUser']
        self.dbPasswd = dbInfo['dbPasswd']
        self.dbName = dbInfo['dbName']
        self.tableName = dbInfo['tableName'][marketType]
        #self.dbColumns = ['Ticker', 'shortName', 'regularMarketOpen', 'regularMarketDayHigh', 
        #                'regularMarketDayLow', 'regularMarketPreviousClose', 'regularMarketVolume']
        self.dbColumns = ['Datetime', 'Ticker', 'Open', 'High', 'Low', 'Close', 'Volume']
    
    def _startMysqlConnection_(self):
        self.mydb = mysql.connector.connect(
        host=self.dbHost,
        user=self.dbUser,
        passwd=self.dbPasswd,
        database=self.dbName
        )
        self.mycursor = self.mydb.cursor()
        print('MySQL connection established')
    
    def _getTrainingData_(self, durationInDays = 30):
        endDate = datetime.now() - timedelta(days=10)
        startDate = endDate - timedelta(days=durationInDays)
        print('Getting training data from {} till {}'.format(
            startDate.strftime('%Y-%m-%d'), endDate.strftime('%Y-%m-%d')))
        self._startMysqlConnection_()

        sql = 'SELECT ' + ', '.join(self.dbColumns) + ' FROM ' + self.tableName
        sql += ' WHERE Ticker in ("' + '", "'.join(self.stockList) + '") AND'
        sql += ' Datetime BETWEEN "' + startDate.strftime('%Y-%m-%d') + '" AND "' + endDate.strftime('%Y-%m-%d')
        sql += '" ORDER BY Datetime, Ticker desc'
        
        self.mycursor.execute(sql)
        df = self.mycursor.fetchall()
        df = pd.DataFrame(df)
        df.columns = self.dbColumns
        self.mydb.close()

        return df

def getStockDataFromDb1(stockList, dbInfoFile, marketType = 'se'):
    stockDb = StockDB(stockList, dbInfoFile, marketType = marketType)
    df = stockDb._getTrainingData_()
    merged_df = pd.DataFrame()
    for i in pd.unique(df.Ticker):
        dt = df[df.Ticker == i]
        merged_df = merged_df.merge(df[df.Ticker == i], on = 'Datetime')

if __name__ == '__main__':
    stockName = 'HM-B.ST'
    dir_path = os.path.dirname(os.path.realpath(__file__))
    with open(os.path.join(dir_path,'../conf/train.yaml')) as file:
        documents = yaml.full_load(file)
    
    stockList = [stockName] + documents[stockName]
    dbYamlFile = os.path.join(dir_path, '../conf/db.yaml')
    stockDb = StockDB(stockList, dbYamlFile, marketType = 'se')
    df = stockDb._getTrainingData_()
    merged_df = df[df.Ticker == stockName]
    merged_df = merged_df[['Datetime', 'Open', 'High', 'Low', 'Close','Volume']]
    for i in pd.unique(df.Ticker):
        if i != stockName:
            dt = df[df.Ticker == i]
            dt = dt[['Datetime', 'Close']]
            dt.columns = ['Datetime', i]
            merged_df = merged_df.merge(dt, on = 'Datetime')
    print(merged_df)