import streamlit as st
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from openai import OpenAI
from function import graph
import openpyxl
# 데이터 파일 경로
st.title('엑셀(xlsx) 파일을 출력합니다.')
file_path = st.file_uploader('xlsx파일을 업로드해주세요')
if file_path is not None:
    # 파일 확장자 추출
    file_extension = file_path.name.split('.')[-1].lower()
    excelex = ['xlsx']
    # 확장자에 따라 적절한 엔진 선택 및 파일 읽기
    if file_extension == 'xlsx':
        df = pd.read_excel(file_path, engine='openpyxl')
    else:
        st.error("엑셀(xlsx) 파일을 업로드해주세요.")
# 엑셀 파일에서 데이터프레임 읽기
    if file_extension in excelex:
        df = pd.read_excel(file_path)
        chart_type = st.selectbox('그래프 종류 선택', ['Line Plot', 'Bar Plot', 'Histogram', 'Pie Chart', 'Box Plot', 'Scatter Plot'])
        columns = df.select_dtypes(include=['float64', 'int64']).columns.tolist()
        x_var = st.selectbox('X 축 선택', columns)
        y_var = st.selectbox('Y 축 선택', columns)
        if chart_type == 'Line Plot':
            if x_var and y_var:
                graph.draw_line_plot(df, x_var, y_var)
        elif chart_type == 'Bar Plot':
            if x_var:
                graph.draw_bar_plot(df, x_var)
        elif chart_type == 'Histogram':
            if x_var:
                graph.draw_histogram(df, x_var)
        elif chart_type == 'Pie Chart':
            if x_var:
                graph.draw_pie_chart(df, x_var)
        elif chart_type == 'Box Plot':
            if x_var:
                graph.draw_box_plot(df, x_var)
        elif chart_type == 'Scatter Plot':
            if x_var and y_var:
                graph.draw_scatter_plot(df, x_var, y_var)

