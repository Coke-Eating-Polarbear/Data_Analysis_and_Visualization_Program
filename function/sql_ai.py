import os
import openai
import pandas as pd

### 내부사용 함수들
def table_definition_prompt(df, df_name):
    prompt = '''Given the following MySQL SQL definition,
            write queries based on the request
            \n### MySQL SQL table, with its properties:

            #
            # {0}({1})
            #
            '''.format(df_name, ",".join(str(x) for x in df.columns))

    return prompt

def handle_response(response):
    query = response.choices[0].message.content.strip()

    if query.startswith("```"):
        query = query.lstrip("```sql\n")
        query = query.rstrip("```")

    if not query.upper().startswith("SELECT"):
        query = "SELECT " + query

    if not query.endswith(";"):
        query += ";"

    return query


### 실 사용 함수들
def make_full_propmt(df, df_name, nlp_text):
    full_prompt = table_definition_prompt(df, df_name) + nlp_text
    return full_prompt

def response_qurey(client, full_prompt):
    response = client.chat.completions.create(
        model="gpt-4o-mini",
        messages=[
            {"role": "system", "content": "You are an assistant that generates SQL queries based on the given MySQL table definition\
            and a natural language request. The query should start with 'SELECT' and end with a semicolon(;). You must give me a query statement without '\n'"},
            {"role": "user", "content": f"A query to answer: {full_prompt}"}
        ],
        max_tokens=200, # 비용 발생하므로 시도하며 적당한 값 찾아간다. 200이면 최대 200단어까지 생성.
                        # 영어는 한 단어가 1토큰, 한글은 한 글자가 1토큰 정도
        temperature=1.0, # 창의성 발휘 여부. 0~2 사이. 0에 가까우면 strict하게, 2에 가까우면 자유롭게(창의성 필요)
        stop=None  # 특정 문자열이 들어오면 멈춘다든지. None이면 없음. .이면 문장이 끝나면 멈춘다든지
    )
    result = response.choices[0].message.content
    return result

