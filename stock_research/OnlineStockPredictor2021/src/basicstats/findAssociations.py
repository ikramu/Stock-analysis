import os 
import sys
from datetime import datetime, timedelta
import pandas as pd
import numpy as np
import seaborn as sns
from matplotlib import pyplot as plt

from sklearn.cluster import KMeans

dirPath = os.path.dirname(os.path.realpath(__file__))
p = os.path.abspath(dirPath+'/..')
if p not in sys.path:
    sys.path.append(p)
from trainDataReader import TrainDataReader


def prepareDataForCorrAnalysis(dbTable, stocks, durationInDays, pickleFile = '/tmp/trainData.pickle'):
    if os.path.isfile(pickleFile):
        rawData = pd.read_pickle(pickleFile)
    else:
        trainDl = TrainDataReader(dbHost = os.environ['dbHost'], dbUser = os.environ['dbUser'], 
        dbPasswd = os.environ['dbPasswd'], dbName = 'omx', dbTable = dbTable, stocks = stocks)

        rawData = trainDl.readStockData(end_date = datetime.now(), numDays = trainDurInDays)
        rawData.to_pickle(pickleFile)

    # change format to put each stock as its own column
    stockDataWithNaN = pd.pivot_table(rawData, values ='Close', index =['Datetime'], columns =['Ticker'], aggfunc = np.sum) 
    # put previous value if current value is NaN
    stockData = stockDataWithNaN.ffill()

    # change absolute values percentage change
    stockDataPerc = stockData.pct_change() * 100

    return stockDataPerc

def get_end_date(df, startDate, granularity, amount):    
    assert(granularity in ['d', 'w', 'm']), "granularity should be 'd', 'w' or 'm'"
    if granularity == 'd':
        endDate = pd.to_datetime(startDate) + timedelta(days=amount)
    elif granularity == 'w':
        endDate = pd.to_datetime(startDate) + timedelta(weeks=amount)
    else:
        endDate = pd.to_datetime(startDate) + timedelta(months=amount)
    
    return np.min([datetime.now(), endDate])

def get_timebased_associations(df, granularity = 'w', amount = 1):
    corrMatrixList = dict()
    finalDate = np.max(df.index)
    startDate = np.min(df.index)
    while startDate < finalDate:
        endDate = get_end_date(df, startDate, granularity, amount)
        selData = df.loc[startDate:endDate].sort_index()
        #corrMatrixList.append(selData.corr())
        corrMatrixList[str(startDate.date())] = selData.corr()
        startDate = endDate

    return corrMatrixList

def get_significant_correlations(corrMatrixList, threshold = 0.5):
    if len(corrMatrixList) < 1:
        print('correlation matrix is empty')
        return
    else:
        stockPairs = []
        stockDf = pd.DataFrame()
        ctr = 0
        #for cmIndex in range(len(corrMatrixList)):
        for key in corrMatrixList.keys():
            corrMatrix = corrMatrixList[key]
            stockNames = corrMatrix.columns
            # reset lower diagonal to zero
            cm = corrMatrix.mask(np.tril(np.ones(corrMatrix.shape, dtype=np.bool_))).values
            indices = list(np.where(np.abs(cm) >= threshold))
            if indices[0].shape[0] > 0:
                sp = list()
                for i in range(indices[0].shape[0]):
                    s1 = stockNames[indices[0][i]]
                    s2 = stockNames[indices[1][i]]
                    if s1 < s2:
                        #entry = {'Stock1': s1, 'Stock2': s2, 'Correlation': corrMatrix.loc[s1,s2]}
                        entry = {'Stock1': s1, 'Stock2': s2, key : corrMatrix.loc[s1,s2]}
                    else:
                        #entry = {'Stock1': s2, 'Stock2': s1, 'Correlation': corrMatrix.loc[s1,s2]}
                        entry = {'Stock1': s2, 'Stock2': s1, key: corrMatrix.loc[s1,s2]}
                    sp.append(entry)
                if ctr == 0:
                    stockDf = pd.DataFrame(sp)
                    ctr = ctr + 1
                else:
                    stockDf = pd.merge(stockDf,pd.DataFrame(sp),on=['Stock1', 'Stock2'], how='outer')
                    #stockPairs.append((stockNames[indices[0][i]],stockNames[indices[1][i]]))
                stockPairs.append(sp)
        
        for key in corrMatrixList.keys():
            corrMatrix = corrMatrixList[key]
            for idx in stockDf.index:
                stockDf.loc[idx, key] = corrMatrix.loc[stockDf.Stock1[idx], stockDf.Stock2[idx]]


        return stockDf

def clusterStocks(stockData):
    kmeans = KMeans(init="random", n_clusters=3, n_init=10, max_iter=300, random_state=42)



omxDf = pd.read_csv(dirPath+ '/../../docs/research/nasdaqOmxStocksInfo.csv')
outDir = os.path.join(dirPath,'../../data')
stocks = omxDf['yfSymbol'].apply(lambda x: x.replace('.ST', ''))    
stocks = stocks.tolist()

dbTable = 'Min2'
trainDurInDays = 150
outfile = os.path.join(outDir,'omxStocksRawData_'+dbTable+ '_DurDays' + str(trainDurInDays) + '.pickle')


stockPercData = prepareDataForCorrAnalysis(dbTable = dbTable, stocks = stocks, durationInDays = 60, pickleFile = outfile)
stockPercData.set_index(pd.to_datetime(stockPercData.index), inplace=True)

selCategory = 'Construction and Materials'
selStocks = omxDf[omxDf.Sector == selCategory].yfSymbol.apply(lambda x: x.replace('.ST',''))
selData = stockPercData[selStocks]
#selData.set_index(pd.to_datetime(selData.index), inplace=True)

cmList = get_timebased_associations(stockPercData, granularity = 'w', amount = 1)
selStockPairs = get_significant_correlations(cmList, threshold = 0.6)
#corrMatrix = selData.corr()

#sns.heatmap(cmList[0], annot=True)
#sns.heatmap(selStockPairs.iloc[:,2:].T)
sns.heatmap(selStockPairs.set_index(['Stock1', 'Stock2']))
plt.show()

