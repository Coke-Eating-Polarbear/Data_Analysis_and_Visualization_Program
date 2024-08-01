import streamlit as st
import pymysql
import pandas as pd
import streamlit as st
import seaborn as sns
import matplotlib.pyplot as plt
st.title("너무춥조 에어컨직빵이조의")

# MySQL 연결 설정
host = 'localhost'
user = 'root'
password = 'babo2862'
charset = 'utf8'
# 데이터베이스 연결
try:
    con = pymysql.connect(host=host, user=user, password=password, charset=charset)
    cur = con.cursor()
except Exception as e:
    st.error(f"데이터 베이스에 연결할수 없습니다.: {e}")
    con = None

# 사이드바에서 선택할 작업 메뉴
st.sidebar.title("작업선택")
action = st.sidebar.radio("Select action", ["Select", "Insert", "Update", "Delete"])

# 데이터베이스 및 테이블 정보 관리
if con:
    # 데이터베이스 목록 가져오기
    cur.execute("SHOW DATABASES")
    databases = [row[0] for row in cur.fetchall()]

    # 스키마 선택
    selected_db = st.sidebar.selectbox("Select a schema (database):", databases)
    
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
                                chart_type = st.selectbox('Select Chart Type', ['Line Plot', 'Bar Plot', 'Histogram', 'Pie Chart', 'Box Plot', 'Scatter Plot'])
                                columns = df.select_dtypes(include=['float64', 'int64']).columns.tolist()
                                x_var = st.selectbox('X 축 선택', columns)
                                y_var = st.selectbox('Y 축 선택', columns)
                                if chart_type == 'Line Plot':
                                    if x_var and y_var:
                                        st.write(f"Line plot between {x_var} and {y_var}")
                                        fig, ax = plt.subplots()
                                        sns.lineplot(data=df, x=x_var, y=y_var, ax=ax)
                                        st.pyplot(fig)
                                elif chart_type == 'Bar Plot':
                                    if x_var:
                                        st.write(f"Bar plot of {x_var}")
                                        fig, ax = plt.subplots()
                                        sns.barplot(x=x_var, y=df[x_var].index, data=df, ax=ax)
                                        st.pyplot(fig)
                                elif chart_type == 'Histogram':
                                    if x_var:
                                        st.write(f"Histogram of {x_var}")
                                        fig, ax = plt.subplots()
                                        sns.histplot(df[x_var], ax=ax, bins=30)
                                        st.pyplot(fig)
                                elif chart_type == 'Pie Chart':
                                    if x_var:
                                        st.write(f"Pie chart of {x_var}")
                                        fig, ax = plt.subplots()
                                        df[x_var].value_counts().plot.pie(ax=ax, autopct='%1.1f%%')
                                        st.pyplot(fig)
                                elif chart_type == 'Box Plot':
                                    if x_var:
                                        st.write(f"Box plot of {x_var}")
                                        fig, ax = plt.subplots()
                                        sns.boxplot(x=df[x_var], ax=ax)
                                        st.pyplot(fig)
                                elif chart_type == 'Scatter Plot':
                                    if x_var and y_var:
                                        st.write(f"Scatter plot between {x_var} and {y_var}")
                                        fig, ax = plt.subplots()
                                        sns.scatterplot(data=df, x=x_var, y=y_var, ax=ax)
                                        st.pyplot(fig)
                                file = st.file_uploader('CSV파일이나 xls파일을 업로드해주세요')
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
                                        selected_db = st.text_input("올리신 파일의 데이터베이스 이름을 입력해주세요:")
                                        selected_table = st.text_input("올리신 파일의 테이블 이름을 입력해주세요:")

                                        # SQL 쿼리 생성 버튼
                                        if st.button("SQL 생성하기"):
                                            if selected_db and selected_table:
                                                # SQL 쿼리 생성
                                                insert_statements = []
                                                for index, row in filedf.iterrows():
                                                    columns = ', '.join([f"`{col}`" for col in filedf.columns])
                                                    values = ', '.join([f"'{str(val)}'" if not pd.isnull(val) else 'NULL' for val in row])
                                                    sql = f"INSERT INTO `{selected_db}`.`{selected_table}` ({columns}) VALUES ({values});"
                                                    insert_statements.append(sql)
                                if file_extension not in csv_ex + excelex:
                                    print("CSV나 엑셀파일을 올려주세요.")
                                else:
                                    print(f"{file}을 데이터베이스에 업로드합니다.")
                            else:
                                st.info("선택하신 테이블에서 찾을수 없습니다.")
                    except Exception as e:
                        st.error(f"An error occurred while retrieving data: {e}")

                elif action == "Insert":
                    st.subheader(f"선택한 테이블 {selected_table}에 값 입력하기")
                    new_values = st.text_area("새로운 값 입력하기 (','로 구분합니다.):")
                    if st.button("Submit Insert"):
                        try:
                            sql = f"INSERT INTO `{selected_table}` VALUES ({new_values})"
                            cur.execute(sql)
                            con.commit()
                            st.success("Record added successfully.")
                        except Exception as e:
                            st.error(f"An error occurred while adding the record: {e}")

                elif action == "Update":
                    st.subheader(f"{selected_table}의 값을 바꿉니다.")
                    condition = st.text_input("Condition (e.g., id=1):")
                    update_values = st.text_area("Update values (e.g., name='new_name'):")
                    if st.button("Submit Update"):
                        try:
                            sql = f"UPDATE `{selected_table}` SET {update_values} WHERE {condition}"
                            cur.execute(sql)
                            con.commit()
                            st.success("Record updated successfully.")
                        except Exception as e:
                            st.error(f"An error occurred while updating the record: {e}")

                elif action == "Delete":
                    st.subheader(f"Deleting entries from {selected_table}")
                    condition = st.text_input("Condition (e.g., id=1):")
                    if st.button("Submit Delete"):
                        try:
                            sql = f"DELETE FROM `{selected_table}` WHERE {condition}"
                            cur.execute(sql)
                            con.commit()
                            st.success("Record deleted successfully.")
                        except Exception as e:
                            st.error(f"An error occurred while deleting the record: {e}")
        except Exception as e:
            st.error(f"An error occurred: {e}")
    # DB 연결 종료
    if con:
        con.close()
