import streamlit as st
import pandas as pd
import streamlit as st


from connect import sql_conn
from function import graph

st.title("MySQL Database Manager")

######### DB 연결부 ##########
db_conn = sql_conn.DBConn()
conn, cur = db_conn.active_conn()

if conn == None or cur == None:
    st.error(f"Could not connect to the database")
else:
    st.success("Connected to the database successfully.")
###############################


# 사이드바에서 선택할 작업 메뉴
st.sidebar.title("Choose an action")
action = st.sidebar.radio("Select action", ["Select", "Insert", "Update", "Delete"])

# 데이터베이스 및 테이블 정보 관리
if conn:
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
            selected_table = st.sidebar.selectbox("Select a table:", tables)
            if selected_table:
                if action == "Select":
                    # 데이터 조회
                    st.subheader(f"Data in {selected_table}")
                    try:
                        cur.execute(f"SELECT * FROM `{selected_table}`")
                        rows = cur.fetchall()
                        if rows:
                            df = pd.DataFrame(rows, columns=[desc[0] for desc in cur.description])
                            st.dataframe(df)
                            chart_type = st.selectbox('Select Chart Type', ['Line Plot', 'Bar Plot', 'Histogram', 'Pie Chart', 'Box Plot', 'Scatter Plot'])
                            columns = df.select_dtypes(include=['float64', 'int64']).columns.tolist()
                            x_var = st.selectbox('Select X variable', columns)
                            y_var = st.selectbox('Select Y variable', columns)

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
                            graph.draw_pair_plot(df)

                        else:
                            st.info("No data found in the selected table.")
                    except Exception as e:
                        st.error(f"An error occurred while retrieving data: {e}")

                elif action == "Insert":
                    st.subheader(f"Inserting new entry into {selected_table}")
                    new_values = st.text_area("Enter new values (comma-separated):")
                    if st.button("Submit Insert"):
                        try:
                            sql = f"INSERT INTO `{selected_table}` VALUES ({new_values})"
                            cur.execute(sql)
                            conn.commit()
                            st.success("Record added successfully.")
                        except Exception as e:
                            st.error(f"An error occurred while adding the record: {e}")

                elif action == "Update":
                    st.subheader(f"Updating entries in {selected_table}")
                    condition = st.text_input("Condition (e.g., id=1):")
                    update_values = st.text_area("Update values (e.g., name='new_name'):")
                    if st.button("Submit Update"):
                        try:
                            sql = f"UPDATE `{selected_table}` SET {update_values} WHERE {condition}"
                            cur.execute(sql)
                            conn.commit()
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
                            conn.commit()
                            st.success("Record deleted successfully.")
                        except Exception as e:
                            st.error(f"An error occurred while deleting the record: {e}")
        except Exception as e:
            st.error(f"An error occurred: {e}")
    # DB 연결 종료
    if conn:
        conn.close()
