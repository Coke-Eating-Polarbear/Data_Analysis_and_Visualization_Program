import os
import pymysql
from dotenv import load_dotenv

class DBConn:
    # MySQL 연결 설정
    def __init__(self):

        load_dotenv()

        self.host = os.getenv('HOST')
        self.user = os.getenv('USER')
        self.password = os.getenv('PASSWORD')
        self.charset = os.getenv('CHARSET')

    # 데이터베이스 연결
    def active_conn(self):
        try:
            conn = pymysql.connect(host=self.host, user=self.user, password=self.password, charset=self.charset)
            cur = conn.cursor()
        except Exception as e:
            conn = None
            cur = None
        return conn, cur