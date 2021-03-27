import os
import joblib
import yaml
from dataReader import DataReader


class TestDataReader(DataReader):
    """ super class for reader classes for training and inference 
    """ 
    def __init__(self, dbHost, dbUser, dbPasswd, dbName, dbTable, stocks, snapshotDir):
        super().__init__(dbHost, dbUser, dbPasswd, dbName)
        self._dbTable = dbTable
        self._stocks = stocks
        self._snapshotDir = snapshotDir
        
    