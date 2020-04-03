import sys
import argparse
import numpy as np
import pandas as pd 
import yfinance as yf
from time import sleep
from datetime import datetime, timedelta
import yaml

def get_stock_data(stock_name, start_date, end_date, interval):
    data = yf.download(stock_name, start=start_date, end=end_date, interval=interval)
    return data

def download_max_stock_data(stock_name, interval, outfile, end_date = datetime.now()):
    ultimate_end_date = end_date
    print('We will save the output to ', outfile)
    bigdf = pd.DataFrame()
    first_time = True

    while True:
        start_date = end_date - timedelta(days=7)
        df = get_stock_data(stock_name=stock_name, start_date=start_date, end_date=end_date, interval=interval)
        if(df.shape[0] == 0):
            print('No more data available, exiting out of current loop...')
            print('**************************************')
            break
        bigdf = pd.concat([bigdf, df]) 
        print('No of rows between ' + str(start_date) + ' and ' + str(end_date) + ' are ' + str(df.shape))
        end_date = start_date
        if first_time:
            df.to_csv(outfile, mode='a', header=True)
            first_time = False
        else:
            df.to_csv(outfile, mode='a', header=False)
        sleep(2)

def arg_setting():
        now=datetime.now().strftime('%Y-%m-%d_%H-%M-%S')   
        outfigfile = 'figures/' + now + '_model_performance.png'
        parser = argparse.ArgumentParser(description='LSTM model to predict next 5 min stock prices')
        parser.add_argument(
            '-s',
            '--stockname',
            default='HM-B.ST',
            help='Input stock file (string), default=\"HM-B.ST\"'
        )
        parser.add_argument(
            '-i',
            '--interval',
            default='1m',
            help='Granularity of tick time (string), default=\"1m\"'
        )
        parser.add_argument(
            '-o',
            '--outfile',
            default = 'data/stock_name.csv',
            help = 'Output file (string), default=\"data/stock_name.csv\"'
        )

        cmd_args = parser.parse_args()
        stock_name = str(cmd_args.stockname)
        interval = str(cmd_args.interval)
        outfile = "data/"+str(cmd_args.stockname)+".csv"

        return stock_name, interval, outfile

def main():
    stock_name, interval, outfile = arg_setting()
    download_max_stock_data(stock_name, interval, outfile)


if __name__ == '__main__':
    #main()
    with open(r'exchange_info.yaml') as file:
        documents = yaml.full_load(file)
        for stock_name in documents['stocks']:
            for interval in documents['intervals']:
                print('Downloading data for ' + stock_name + ' for interval of ' + interval)
                outfile = 'new_data/'+stock_name+'_'+interval+'.csv'
                download_max_stock_data(stock_name, interval, outfile)

        #for item, doc in documents.items():
        #    print(item, ":", doc)


    #stock_name, interval, outfile = arg_setting()
    #print(stock_name)
    #print(interval)
    #print(outfile)
    #download_2month_data('HM-B.ST')