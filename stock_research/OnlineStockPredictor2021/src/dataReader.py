import mysql.connector as conn
import pandas as pd

class DataReader(object):
    """
    super class for reader classes for training and inference 
    """ 
    def __init__(self, dbHost, dbUser, dbPasswd, dbName):
        super().__init__()
        self._dbHost = dbHost
        self._dbUser = dbUser
        self._dbPasswd = dbPasswd
        self._dbName = dbName
        
    def start_mysql_connection(self):
        self._mydb = conn.connect(
        host=self._dbHost,
        user=self._dbUser,
        passwd=self._dbPasswd,
        database=self._dbName
        )
        self._mycursor = self._mydb.cursor()
        print('MySQL connection established')

    def get_stock_last_saved_date(self, stock, table):
        self.start_mysql_connection()
        sql = "SELECT * from `" + table + "` where Ticker = '" + stock + "' ORDER BY Datetime DESC limit 10"
        res = pd.read_sql(sql, self._mydb)
        if res.shape[0] > 0:
            return pd.to_datetime(res['Datetime'][0])

    def get_last_n_records(self, stocks, dbTable, batchSize):
        n = (batchSize + 50) * len(stocks)
        self.start_mysql_connection()

        sql = "SELECT * from `" + dbTable + "` where Ticker in ('" + "','".join(stocks) + "') ORDER BY Datetime DESC limit " + str(n)
        res = pd.read_sql(sql, self._mydb)
        testDf = res.pivot_table(index='Datetime', columns = 'Ticker')
        self._mydb.close()
        print('MySQL connection closed')
        assert(testDf.shape[0] > batchSize)
        
        testDf.sort_index(inplace=True, ascending=False)
        testDf = testDf.iloc[:batchSize, :]

        # we need Closing price
        testDf = testDf['Close']
        testDf = testDf.fillna(method='ffill')
        testDf.sort_index(inplace=True, ascending=True)

        return testDf
        