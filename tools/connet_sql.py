import os
import pandas as pd
from sqlalchemy import create_engine, text
import pymysql
from dotenv import load_dotenv

# CSV 파일 읽기
csv_file_path = 'C:\\ITStudy\\03_SQL\\proj_1\\books_1.csv'
df = pd.read_csv(csv_file_path)
df.head()
print(df.head())

load_dotenv()

# MySQL 데이터베이스 연결 설정
username = os.getenv('USER')
password = os.getenv('PASSWORD')
host = os.getenv('HOST')
port = '3306'
database = 'proj_1'

engine = create_engine(f'mysql+pymysql://{username}:{password}@{host}:{port}/{database}')

# 데이터프레임을 MySQL 테이블로 저장
df.to_sql('books2', con=engine, if_exists='append', index=False)

print("CSV 파일이 MySQL 테이블로 성공적으로 가져와졌습니다.")