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
        
        cmd_args = parser.parse_args()
        market_type = str(cmd_args.markettype)

        return market_type

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

    # read stock dataframe
    omxDf = pd.read_csv(dirPath+ '/../docs/research/nasdaqOmxStocksInfo.csv')

    stocks = omxDf['yfSymbol'].tolist()
    sql = createSqlForAllTables('omx', stocks)

    # save the sql file 
    txtfile = open(dirPath+ '/config/allOmxTableDef.sql', 'w')
    txtfile.write(sql)
    txtfile.close()

    trainDl = TrainDataReader(dbHost = os.environ['dbHost'], dbUser = os.environ['dbUser'], 
    dbPasswd = os.environ['dbPasswd'], dbName = 'omx', dbTable = 'dummy', stocks = stocks)

    trainDl.execute_sql_command(sql)
    # this is to download high-resolution data (1 minute resolution)
    trainDl.download_max_stock_data(interval = '1m', end_date = datetime.now(), table = None)
    
    print('Download completed\n')