import os
import argparse
import pandas as pd
from datetime import datetime, timedelta

from trainDataReader import TrainDataReader

def readCommandLineArgs():
        parser = argparse.ArgumentParser(description='LSTM model to predict next nth min stock price')
        parser.add_argument(
            '-m',
            '--markettype',
            default='se',
            help='Stock market (string), default=\"se\"'
        )
        parser.add_argument(
            '-i',
            '--interval',
            default='2m',
            help='Interval (or granularity) of data (int), default=\"2m\"'
        )
        
        cmd_args = parser.parse_args()
        market_type = str(cmd_args.markettype)
        interval = str(cmd_args.interval)

        return market_type, interval

def createSqlForAllTables(dbName, stocks):
    '''
    CREATE TABLE `crTrain` (
    `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `Ticker` varchar(50) NOT NULL,
    `Open` decimal(50,2) DEFAULT NULL,
    `High` decimal(50,2) DEFAULT NULL,
    `Low` decimal(50,2) DEFAULT NULL,
    `Close` decimal(50,2) DEFAULT NULL,
    `Volume` bigint DEFAULT NULL,
    PRIMARY KEY (`Datetime`,`Ticker`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
    '''
    commonStr = """`Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `Ticker` varchar(50) NOT NULL,
        `Open` decimal(50,2) DEFAULT NULL,
        `High` decimal(50,2) DEFAULT NULL,
        `Low` decimal(50,2) DEFAULT NULL,
        `Close` decimal(50,2) DEFAULT NULL,
        `Volume` bigint DEFAULT NULL,
        PRIMARY KEY (`Datetime`,`Ticker`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;"""

    sql = 'USE '  + dbName + ';\n'

    for stock in stocks:
        sql += 'DROP TABLE IF EXISTS `' + stock + '`;\n'
        sql += 'CREATE TABLE `' + stock + '` (\n'
        sql += commonStr + '\n'
        
    return sql

if __name__ == '__main__':
    # import local library functions
    dirPath = os.path.dirname(os.path.realpath(__file__))

    stockMarket, interval = readCommandLineArgs()

    # read stock dataframe
    omxDf = pd.read_csv(dirPath+ '/../docs/research/nasdaqOmxStocksInfo.csv')

    stocks = omxDf['yfSymbol'].apply(lambda x: x.replace('.ST', ''))
    stocks = stocks.tolist()
    if interval[-1] == 'm':
        dbTable = 'Min'+interval[:len(interval)-1] 
    else:
        dbTable = 'Day'+interval[:len(interval)-1] 

    trainDl = TrainDataReader(dbHost = os.environ['dbHost'], dbUser = os.environ['dbUser'], 
    dbPasswd = os.environ['dbPasswd'], dbName = 'omx', dbTable = dbTable, stocks = stocks)

    # save the sql file 
    #sql = createSqlForAllTables('omx', stocks)
    #txtfile = open(dirPath+ '/config/allOmxTableDef.sql', 'w')
    #txtfile.write(sql)
    #txtfile.close()

    # yahoo finance ranges
    # 1 min = 30 days    
    # 5 min = 60 days    
    # 15 min = 60 days    

    #trainDl.execute_sql_command(sql)
    # this is to download high-resolution data (1 minute resolution)
    # trainDl.download_max_stock_data(interval = '1m', end_date = datetime.now(), dayDelta = 7, table = None)

    print('Downloading data for ' + stockMarket + ' market')
    print('Interval is ' + interval)
 
    trainDl.download_max_stock_data(interval = interval, end_date = datetime.now(), dayDelta = 59)

    print('Download completed\n')