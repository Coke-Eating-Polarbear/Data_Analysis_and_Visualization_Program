**Trouble Shooting**
---
1. **csv 데이터를 MySQL에 연동하면서 문제 발생**
   - 문제: 인코딩 유형이 맞지 않아 오류 발생
   - 해결: python과 DB 연동을 통해 해결 
2. **도서 십진분류법을 활용하여 카테고리 컬럼 추가 후 변환하는 과정에서 문제 발생**
   - 문제: 분류 코드가 [985.54, ㅂ936ㅈ, 잡지] 등 다양한 형식으로 존재하여 int 타입으로 변경 불가
   - 해결: 숫자가 포함되지 않은 데이터는 drop, 숫자가 포함된 데이터는 필요없는 부분을 모두 drop해서 변환
   <p align="center">
    <img src="https://github.com/user-attachments/assets/3a2a4b08-8011-4f1c-9fc7-08ad4c7f93e6 " width="40%" /> </p><br>


   
