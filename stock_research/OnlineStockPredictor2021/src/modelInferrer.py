import argparse
import joblib
import yaml
import os

from testDataReader import TestDataReader
from keras.models import load_model

def readCommandLineArgs():
    parser = argparse.ArgumentParser(description='LSTM model to predict next nth min stock price')
    parser.add_argument('-o','--outdir', required=True)
    
    cmd_args = parser.parse_args()
    outdir = str(cmd_args.outdir)

    return outdir

# read model related data 
def readModelData(snapshotDir):
    claArgsPath = os.path.join(snapshotDir, 'programArgs.yaml')
    modelPath = os.path.join(snapshotDir,'trained_model.h5')
    
    with open(claArgsPath, 'r') as ifile:
        yaml_dict = yaml.safe_load(ifile)
    model = load_model(modelPath)
    batchSize = model.layers[0].input_shape[0]
    
    scaler = joblib.load(os.path.join(snapshotDir,'minMaxScaler.pkl'))

    return yaml_dict, model, batchSize, scaler

if __name__ == '__main__':
    snapshotDir = readCommandLineArgs()
    print('snapshotDir is ' + snapshotDir)
    
    claArgs, model, batchSize, scaler = readModelData(snapshotDir)

    dependentStock = claArgs['stockname']
    allStocks = claArgs['stocks']
    independentStock = allStocks
    independentStock.pop(independentStock.index(dependentStock))
    
    # read last n=batchSize rows for stocks 
    tdr = TestDataReader(dbHost = claArgs['dbHost'], dbUser = os.environ['dbUser'], 
                        dbPasswd = os.environ['dbPasswd'], dbName = claArgs['dbName'], 
                        dbTable = claArgs['dbTable'], stocks = allStocks, snapshotDir = snapshotDir)

    print(model.summary())

    testDf = tdr.get_last_n_records(allStocks, claArgs['dbTable'], batchSize)
    
    print('No. of rows are: ' + str(testDf.shape[0]))
    
    
