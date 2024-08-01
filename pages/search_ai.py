import streamlit as st
import pandas as pd
import streamlit as st

from connect import sql_conn, openai_conn
from function import graph, sql_ai

st.title("너무 춥조 에어컨 직빵이조")

######### DB 연결부 ##########
db_conn = sql_conn.DBConn()
conn, cur = db_conn.active_conn()

if conn == None or cur == None:
    st.error(f"DB가 그대를 거부하리")
else:
    st.success("DB연결 성공적.")
###############################

######### AI 연결부 ##########
api_conn = openai_conn.projAI()

if api_conn == None:
    st.error(f"AI가 그대를 거부하리")
else:
    st.success("AI연결 성공적.")
###############################


# 데이터베이스 및 테이블 정보 관리
if conn:
    # 데이터베이스 목록 가져오기
    cur.execute("SHOW DATABASES")
    databases = [row[0] for row in cur.fetchall()]

    # 스키마 선택
    selected_db = st.sidebar.selectbox("스키마 선택:", databases)

    if selected_db:
        try:
            cur.execute(f"USE `{selected_db}`")
            cur.execute("SHOW TABLES")
            tables = [row[0] for row in cur.fetchall()]
            # 테이블 선택
            selected_table = st.sidebar.selectbox("테이블을 선택해주세요:", tables)

            if selected_table:
                st.subheader(f"Data in {selected_table}")
                try:
                    cur.execute(f"SELECT * FROM `{selected_table}` LIMIT 1")
                    column_names = [desc[0] for desc in cur.description]
                    # 멀티 셀렉트를 통해 원하는 컬럼 선택
                    selected_columns = st.multiselect('표시할 열을 선택해주세요', column_names)

                    # 선택된 열이 없는 경우 처리
                    if not selected_columns:
                        st.write("적어도 한개의 열을 선택해주세요")
                    else:
                    # 선택된 열들로 SELECT 쿼리 구성
                        selected_columns_str = ", ".join(selected_columns)
                        query = f"SELECT {selected_columns_str} FROM `{selected_table}`"
                        cur.execute(query)
                        rows = cur.fetchall()
                        if rows:
                            df = pd.DataFrame(rows, columns=[desc[0] for desc in cur.description])
                            st.dataframe(df)
                            ### AI 질문부분
                            nlp_text = st.text_input("질문을 입력해주세요:")
                            if nlp_text:
                                full_prompt = sql_ai.make_full_propmt(df, selected_table, nlp_text)
                                query_ai = sql_ai.response_qurey(api_conn.client, full_prompt)
                                cur.execute(query_ai)
                                rows_ai = cur.fetchall()

                                if rows_ai:
                                    df_ai = pd.DataFrame(rows_ai, columns=[desc[0] for desc in cur.description])
                                    st.dataframe(df_ai)
                                    chart_type = st.selectbox('그래프 종류 선택', ['Line Plot', 'Bar Plot', 'Histogram', 'Pie Chart', 'Box Plot', 'Scatter Plot'])
                                    columns = df_ai.select_dtypes(include=['float64', 'int64']).columns.tolist()
                                    x_var = st.selectbox('X 축 선택', columns)
                                    y_var = st.selectbox('Y 축 선택', columns)

                                    if chart_type == 'Line Plot':
                                        if x_var and y_var:
                                            graph.draw_line_plot(df_ai, x_var, y_var)
                                    elif chart_type == 'Bar Plot':
                                        if x_var:
                                            graph.draw_bar_plot(df_ai, x_var)
                                    elif chart_type == 'Histogram':
                                        if x_var:
                                            graph.draw_histogram(df_ai, x_var)
                                    elif chart_type == 'Pie Chart':
                                        if x_var:
                                            graph.draw_pie_chart(df_ai, x_var)
                                    elif chart_type == 'Box Plot':
                                        if x_var:
                                            graph.draw_box_plot(df_ai, x_var)
                                    elif chart_type == 'Scatter Plot':
                                        if x_var and y_var:
                                            graph.draw_scatter_plot(df_ai, x_var, y_var)
                                else:
                                    st.info("선택하신 테이블에서 찾을수 없습니다.")
                        else:
                                st.info("선택하신 테이블에서 찾을수 없습니다.")
                except Exception as e:
                    st.error(f"에러발생!: {e}")
        except Exception as e:
            st.error(f"An error occurred: {e}")
    # DB 연결 종료
    if conn:
        conn.close()
