import mysql.connector as conn

class DataReader(object):
    """ super class for reader classes for training and inference 

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
