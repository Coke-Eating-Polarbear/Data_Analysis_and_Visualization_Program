## **프로젝트 화면**
![image](https://github.com/user-attachments/assets/5485e233-99de-40b3-b415-3a9ca74dd67b)<br>
![image](https://github.com/user-attachments/assets/07dc2853-6595-4fb4-8d31-6e5992eec630)<br>
![image](https://github.com/user-attachments/assets/ee6c9981-ac29-417f-96e5-dfe08afc8dc4)
<br>

***

## **프로젝트 개요**

**주제**: SQL DB와 Streamlit을 융합하여 데이터 분석가를 위한 간단한 데이터 분석 및 시각화 프로그램을 개발한다.<br><br>
**선정이유**: 데이터 분석가의 빠른 데이터 탐색을 위해 <br><br>
**데이터 출처**: <small>(국립중앙도서관 - 공공 도서관 소장도서: [링크](https://www.bigdata-culture.kr/bigdata/user/data_market/detail.do?id=9bc56c9c-bc4e-4b68-90da-f4900009fc05
))</small>
<br>

***

## **Trouble Shooting**
1. **활용 데이터에 구분할 수 없는 컬럼 코드 존재**
  - 문제: 데이터에 판단하기 어려운 코드 데이터가 존재
  - 해결
    - 도서 십진분류법을 활용하여 카테고리 컬럼 추가 후 도서 분류가 가능하다는 것을 알게 되었음 -> 도서 분류를 위한 category 테이블을 생성하고 book 테이블과 join
    - 분류 코드가 [985.54, ㅂ936ㅈ, 잡지] 등 다양한 형식으로 존재 -> 숫자가 포함되지 않은 데이터는 drop, 숫자가 포함된 데이터는 필요없는 부분을 모두 drop해서 변환
          <p align="center">
         <img src="https://github.com/user-attachments/assets/9d7f1a5b-ad0a-44cb-8cec-8930b92a00ce" width="50%" /></p><br>
         <p align="center">
         <img src="https://github.com/user-attachments/assets/c5b5b53a-b0b8-41d7-9fce-e9ca5a0a218b" width="25%" />  <img src="https://github.com/user-attachments/assets/3a2a4b08-8011-4f1c-9fc7-08ad4c7f93e6 " width="40%" />  </p><br>

2. **category 테이블을 작성하는 과정에서 너무 많은 분류 코드가 이미지 표로만 존재**
   - 해결: Chat GPT에 이미지를 입력하여 text 형태로 반환, 이를 활용해 category 테이블 생성

3. **엑셀 파일을 업로드 하는 과정에서 xls 확장자 처리 문제 발생**
   - xls확장자 입력 제한 기능 추가 

***

## **향후 개선 계획**
1. 기능별 모듈화<br>
2. DB, OpenAI 연결시 streamlit 에서 입력값을 받기<br>
3. xls 파일도 업로드 가능하도록 하기<br>
4. 실행한 분석 결과를 저장하는 기능 추가하기<br>

***

## **역할분담**
**임정규**: 프로그램에 open AI 연동 및 코드 리팩토링 진행, 서버 연동 및 협업 환경 구축 <br>
**정지연**: book information csv 파일 SQL 형식 변환 (DB 연동) 및 카테고리 테이블 구축, 데이터 정제 <br>
**김명준**: streamlit 기반 python 코드 작성 및 프로그램 구현, 서비스 고도화 <br>
**안시은**: book information SQL 데이터 정제 및 테이블 조인, xlsx 파일 변환 <br>
