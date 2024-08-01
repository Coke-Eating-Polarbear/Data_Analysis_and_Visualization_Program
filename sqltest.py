import streamlit as st
import pandas as pd
import streamlit as st
from connect import sql_conn
from function import graph
from streamlit_option_menu import option_menu
from sqlalchemy import create_engine
st.title("너무 춥조 에어컨 직빵이조")

######### DB 연결부 ##########
db_conn = sql_conn.DBConn()
conn, cur = db_conn.active_conn()

if conn == None or cur == None:
    st.error(f"DB가 그대를 거부하리")
else:
    st.success("DB연결 성공적.")
###############################


# 사이드바에서 선택할 작업 메뉴
st.sidebar.title("작업선택")
action = st.sidebar.radio("Select action", ["Select", "Insert", "Update", "Delete"])

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
                if action == "Select":
                    # 데이터 조회
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
                            else:
                                st.info("선택하신 테이블에서 찾을수 없습니다.")
                    except Exception as e:
                        st.error(f"에러발생!: {e}")
                elif action == "Insert":
                    st.subheader(f"선택한 테이블 {selected_table}에 값 입력하기")
                    try:
                        # 테이블의 열 정보 가져오기
                        cur.execute(f"DESCRIBE `{selected_table}`")
                        columns_info = cur.fetchall()

                        # 열 이름과 데이터 타입 출력
                        st.write("열 이름과 데이터 타입:")
                        columns_description = []
                        for column in columns_info:
                            col_name = column[0]
                            col_type = column[1]
                            columns_description.append(f"{col_name} ({col_type})")
                        st.write(", ".join(columns_description))

                        # 사용자에게 입력 형식 안내
                        st.write("위의 형식에 맞게 값을 입력하세요.")
                        st.write("예: 'John', 28, '2021-01-01' (문자는 작은 따옴표로 감싸고, 숫자는 그대로 입력)")

                        # 사용자가 입력한 값
                        new_values = st.text_area("새로운 값 입력하기 (',(콤마)'로 구분합니다.):")
                        if st.button("Insert 확인"):
                            try:
                                # INSERT SQL 문 생성 및 실행
                                sql = f"INSERT INTO `{selected_table}` VALUES ({new_values})"
                                cur.execute(sql)
                                conn.commit()
                                st.success("성공적으로 값을 입력하였습니다.")
                            except Exception as e:
                                st.error(f"비상!!! 공습경보! 에러발생!: {e}")
                    except Exception as e:
                        st.error(f"테이블 정보 가져오기 중 에러 발생: {e}")

                elif action == "Update":
                    st.subheader(f"{selected_table}의 설정값을 바꿉니다.")
                    condition = st.text_input("조건문 작성 (e.g., id=1):")
                    update_values = st.text_area("입력할 값 (e.g., name='new_name'):")
                    if st.button("업데이트하기"):
                        try:
                            sql = f"UPDATE `{selected_table}` SET {update_values} WHERE {condition}"
                            cur.execute(sql)
                            conn.commit()
                            st.success("업데이트 성공적.")
                        except Exception as e:
                            st.error(f"비상!!! 에러발생!: {e}")

                elif action == "Delete":
                    st.subheader(f"{selected_table}에서 값 지우기")
                    condition = st.text_input("조건 (e.g., id=1):")
                    if st.button("지우기"):
                        try:
                            sql = f"DELETE FROM `{selected_table}` WHERE {condition}"
                            cur.execute(sql)
                            conn.commit()
                            st.success("삭제 성공적.")
                        except Exception as e:
                            st.error(f"비상!!! 에러발생!: {e}")
                
        except Exception as e:
            st.error(f"An error occurred: {e}")
    # DB 연결 종료
    file = st.file_uploader('CSV파일이나 xls파일을 업로드해주세요')
    if file is not None:
        file_extension = file.name.split('.')[-1].lower()
        csv_ex = ['csv']
        excelex = ['xls', 'xlsx']
        if file_extension in csv_ex:
            filedf = pd.read_csv(file)
        elif file_extension in excelex:
            filedf = pd.read_excel(file)
        else:
            st.error("CSV나 엑셀 파일을 업로드해주세요.")
            filedf = None

        if filedf is not None:
        # 테이블 이름과 데이터베이스 선택
            selected_db = st.text_input("올리신 파일의 데이터베이스(스키마) 이름을 입력해주세요:")
            selected_table = st.text_input("올리신 파일의 테이블 이름을 입력해주세요:")
            engine = create_engine(f'mysql+pymysql://root:babo2862@localhost/{selected_db}')
            if st.button("SQL 생성하기"):
                filedf.to_sql(selected_table, con=engine, if_exists='replace', index=False)
                st.write("SQL에 성공적으로 업로드를 하였습니다.")
                if file_extension not in csv_ex + excelex:
                    print("CSV나 엑셀파일을 올려주세요.")
                else:
                    print(f"{file}을 데이터베이스에 업로드합니다.")
    if conn:
        conn.close()
