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
   - 해결: Chat GPT에 이미지를 입력하여 text 형태로 반환하게 하였고, 이를 활용해 category 테이블 생성

3. **엑셀 파일을 업로드 하는 과정에 xls 확장자는 입력을 하지못함**
   - xls확장자는 못넣게 했습니다. 
---

## **향후 개선 계획**
1. **기능별 모듈화**
2. **DB, OpenAI 연결시 streamlit 에서 입력값을 받기**

   
