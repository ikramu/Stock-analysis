import os
import yaml
import argparse
import pandas as pd
import yfinance as yf
from time import sleep
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

if __name__ == '__main__':
    stockMarket = readCommandLineArgs()
    print('Downloading data for ' + stockMarket + ' market')
    dirPath = os.path.dirname(os.path.realpath(__file__))
    dbInfoFile = os.path.join(dirPath, 'config/db.yaml')
    stockInfoFile = os.path.join(dirPath, 'config/stock_info.yaml')
    
    with open(dbInfoFile) as file:
        documents = yaml.full_load(file)
    dbInfo = documents['dbInfo'][stockMarket]

    with open(stockInfoFile) as file:
        documents = yaml.full_load(file)
    stocks = documents[stockMarket]
    trainDl = TrainDataReader(dbHost = os.environ['dbHost'], dbUser = os.environ['dbUser'], 
    dbPasswd = os.environ['dbPasswd'], dbName = dbInfo['db'], dbTable = dbInfo['trainTable'], stocks = stocks)
    # this is to download high-resolution data (1 minute resolution)
    trainDl.download_max_stock_data(interval = '1m', end_date = datetime.now(), table = None)
    
    print('Download completed\n')