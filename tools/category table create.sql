use proj_1;
-- Create table
drop table category;
CREATE TABLE Category (
    MainCategoryCode VARCHAR(3),
    MainCategoryName VARCHAR(60),
    SubCategoryCode VARCHAR(3),
    SubCategoryName VARCHAR(50)
);



-- Insert data
INSERT INTO Category (MainCategoryCode, MainCategoryName, SubCategoryCode, SubCategoryName) VALUES
('000', '총류', '001', '지식 및 학문 일반'),
('000', '총류', '003', '이론 체계 및 시스템'),
('000', '총류', '004', '컴퓨터과학'),
('000', '총류', '005', '프로그래밍, 프로그램, 데이터'),
('000', '총류', '006', '[미사용]'),
('000', '총류', '007', '[미사용]'),
('000', '총류', '008', '[미사용]'),
('000', '총류', '009', '[미사용]'),

('010', '도서학, 서지학', '011', '저작'),
('010', '도서학, 서지학', '012', '필사본, 판본, 제본'),
('010', '도서학, 서지학', '013', '출판 및 판매'),
('010', '도서학, 서지학', '014', '개인서지 및 목록'),
('010', '도서학, 서지학', '015', '국가별 서지 및 목록'),
('010', '도서학, 서지학', '016', '주제별 서지 및 목록'),
('010', '도서학, 서지학', '017', '특수서지 및 목록'),
('010', '도서학, 서지학', '018', '일반서지 및 목록'),
('010', '도서학, 서지학', '019', '장서목록'),

('020', '문헌정보학', '021', '도서관 행정 및 재정'),
('020', '문헌정보학', '022', '도서관 건축 및 설비'),
('020', '문헌정보학', '023', '도서관 경영, 관리'),
('020', '문헌정보학', '024', '수서, 정리 및 보존'),
('020', '문헌정보학', '025', '도서관 봉사 및 활동'),
('020', '문헌정보학', '026', '일반도서관'),
('020', '문헌정보학', '027', '학교 및 대학 도서관'),
('020', '문헌정보학', '028', '기록관리'),
('020', '문헌정보학', '029', '독서 및 정보매체의 이용'),

('030', '백과사전', '031', '한국어'),
('030', '백과사전', '032', '중국어'),
('030', '백과사전', '033', '일본어'),
('030', '백과사전', '034', '영어'),
('030', '백과사전', '035', '독일어'),
('030', '백과사전', '036', '프랑스어'),
('030', '백과사전', '037', '스페인어'),
('030', '백과사전', '038', '이탈리아어'),
('030', '백과사전', '039', '기타 제언어'),

('040', '강연집, 수필집, 연설문집', '041', '한국어'),
('040', '강연집, 수필집, 연설문집', '042', '중국어'),
('040', '강연집, 수필집, 연설문집', '043', '일본어'),
('040', '강연집, 수필집, 연설문집', '044', '영어'),
('040', '강연집, 수필집, 연설문집', '045', '독일어'),
('040', '강연집, 수필집, 연설문집', '046', '프랑스어'),
('040', '강연집, 수필집, 연설문집', '047', '스페인어'),
('040', '강연집, 수필집, 연설문집', '048', '이탈리아어'),
('040', '강연집, 수필집, 연설문집', '049', '기타 제언어'),

('050', '일반연속간행물', '051', '한국어'),
('050', '일반연속간행물', '052', '중국어'),
('050', '일반연속간행물', '053', '일본어'),
('050', '일반연속간행물', '054', '영어'),
('050', '일반연속간행물', '055', '독일어'),
('050', '일반연속간행물', '056', '프랑스어'),
('050', '일반연속간행물', '057', '스페인어'),
('050', '일반연속간행물', '058', '기타 제언어'),
('050', '일반연속간행물', '059', '연감'),

('060', '일반 학회, 단체, 협회, 기관, 연구기관', '061', '아시아'),
('060', '일반 학회, 단체, 협회, 기관, 연구기관', '062', '유럽'),
('060', '일반 학회, 단체, 협회, 기관, 연구기관', '063', '아프리카'),
('060', '일반 학회, 단체, 협회, 기관, 연구기관', '064', '북아메리카'),
('060', '일반 학회, 단체, 협회, 기관, 연구기관', '065', '남아메리카'),
('060', '일반 학회, 단체, 협회, 기관, 연구기관', '066', '오세아니아, 양극지방'),
('060', '일반 학회, 단체, 협회, 기관, 연구기관', '068', '해양'),
('060', '일반 학회, 단체, 협회, 기관, 연구기관', '069', '박물관학'),

('070', '신문, 저널리즘', '071', '아시아'),
('070', '신문, 저널리즘', '072', '유럽'),
('070', '신문, 저널리즘', '073', '아프리카'),
('070', '신문, 저널리즘', '074', '북아메리카'),
('070', '신문, 저널리즘', '075', '남아메리카'),
('070', '신문, 저널리즘', '076', '오세아니아, 양극지방'),
('070', '신문, 저널리즘', '077', '일반저널'),
('070', '신문, 저널리즘', '078', '특정주제의 신문'),
('070', '신문, 저널리즘', '079', '[미사용]'),

('080', '일반 전집, 총서', '081', '개인일반전집'),
('080', '일반 전집, 총서', '082', '2인 이상의 일반전집, 총서'),
('080', '일반 전집, 총서', '083', '[미사용]'),
('080', '일반 전집, 총서', '084', '[미사용]'),
('080', '일반 전집, 총서', '085', '[미사용]'),
('080', '일반 전집, 총서', '086', '[미사용]'),
('080', '일반 전집, 총서', '087', '[미사용]'),
('080', '일반 전집, 총서', '088', '[미사용]'),
('080', '일반 전집, 총서', '089', '[미사용]'),

('090', '향토자료', '091', '[미사용]'),
('090', '향토자료', '092', '[미사용]'),
('090', '향토자료', '093', '[미사용]'),
('090', '향토자료', '094', '[미사용]'),
('090', '향토자료', '095', '[미사용]'),
('090', '향토자료', '096', '[미사용]'),
('090', '향토자료', '097', '[미사용]'),
('090', '향토자료', '098', '[미사용]'),
('090', '향토자료', '099', '[미사용]');

-- Insert additional data
INSERT INTO Category (MainCategoryCode, MainCategoryName, SubCategoryCode, SubCategoryName) VALUES
('100', '철학', '101', '철학 및 이론의 효용'),
('100', '철학', '102', '잠저'),
('100', '철학', '103', '사전(辭典), 사전(辭典), 용어사전'),
('100', '철학', '104', '강연집, 수필집'),
('100', '철학', '105', '연속간행물'),
('100', '철학', '106', '학회, 단체, 협회, 기관, 회의'),
('100', '철학', '107', '지도법, 연구법 및 교육, 교육자료'),
('100', '철학', '108', '총서, 전집, 선집'),
('100', '철학', '109', '[미사용]'),

('110', '형이상학', '111', '방법론'),
('110', '형이상학', '112', '존재론'),
('110', '형이상학', '113', '우주론 및 자연철학'),
('110', '형이상학', '114', '공간'),
('110', '형이상학', '115', '시간'),
('110', '형이상학', '116', '운동과 변화'),
('110', '형이상학', '117', '구조'),
('110', '형이상학', '118', '힘과 에너지'),
('110', '형이상학', '119', '물질과 질량'),

('120', '인식론, 인간론, 인간학', '121', '인식론'),
('120', '인식론, 인간론, 인간학', '122', '인과론'),
('120', '인식론, 인간론, 인간학', '123', '자유 및 필연'),
('120', '인식론, 인간론, 인간학', '124', '목적론'),
('120', '인식론, 인간론, 인간학', '125', '가치론'),
('120', '인식론, 인간론, 인간학', '126', '철학적 인간학'),
('120', '인식론, 인간론, 인간학', '127', '[미사용]'),
('120', '인식론, 인간론, 인간학', '128', '[미사용]'),
('120', '인식론, 인간론, 인간학', '129', '[미사용]'),

('130', '철학의 체계', '131', '관념론 및 연관철학'),
('130', '철학의 체계', '132', '비판철학'),
('130', '철학의 체계', '133', '합리론'),
('130', '철학의 체계', '134', '인문주의'),
('130', '철학의 체계', '135', '경험론'),
('130', '철학의 체계', '136', '자연주의'),
('130', '철학의 체계', '137', '유물론'),
('130', '철학의 체계', '138', '과학주의'),
('130', '철학의 체계', '139', '기타'),

('140', '경학', '141', '역류(한역)'),
('140', '경학', '142', '서류'),
('140', '경학', '143', '시류'),
('140', '경학', '144', '예류'),
('140', '경학', '145', '악류'),
('140', '경학', '146', '춘추류'),
('140', '경학', '147', '효경'),
('140', '경학', '148', '사서'),
('140', '경학', '149', '[미사용]'),

('150', '동양철학, 동양사상', '151', '한국 철학, 사상'),
('150', '동양철학, 동양사상', '152', '중국 철학, 사상'),
('150', '동양철학, 동양사상', '153', '일본 철학, 사상'),
('150', '동양철학, 동양사상', '154', '동아시아 제국 철학, 사상'),
('150', '동양철학, 동양사상', '155', '인도 철학, 사상'),
('150', '동양철학, 동양사상', '156', '중앙아시아 제국 철학, 사상'),
('150', '동양철학, 동양사상', '157', '서아시아 제국 철학, 사상'),
('150', '동양철학, 동양사상', '158', '아라비아반도 철학, 사상'),

('160', '서양철학', '161', '[미사용]'),
('160', '서양철학', '162', '미국철학'),
('160', '서양철학', '163', '북구철학'),
('160', '서양철학', '164', '영국철학'),
('160', '서양철학', '165', '독일, 오스트리아 철학'),
('160', '서양철학', '166', '프랑스, 네덜란드 철학'),
('160', '서양철학', '167', '스페인철학'),
('160', '서양철학', '168', '이탈리아철학'),
('160', '서양철학', '169', '러시아철학'),

('170', '논리학', '171', '연역법'),
('170', '논리학', '172', '귀납법'),
('170', '논리학', '173', '범정법적 논리학'),
('170', '논리학', '174', '기호, 수리 논리학'),
('170', '논리학', '175', '오류'),
('170', '논리학', '176', '삼단논법'),
('170', '논리학', '177', '가설, 가정'),
('170', '논리학', '178', '논증, 설득'),

('180', '심리학', '181', '심리학각론'),
('180', '심리학', '182', '차이심리학'),
('180', '심리학', '183', '발달심리학'),
('180', '심리학', '184', '이상심리학'),
('180', '심리학', '185', '생리심리학'),
('180', '심리학', '186', '임상심리학'),
('180', '심리학', '187', '심성연구 및 비평, 초심리학'),
('180', '심리학', '188', '상법, 운명판단'),
('180', '심리학', '189', '응용심리학 일반'),

('190', '윤리학, 도덕철학', '191', '일반윤리학 각론'),
('190', '윤리학, 도덕철학', '192', '가정윤리'),
('190', '윤리학, 도덕철학', '193', '국가 및 정치윤리'),
('190', '윤리학, 도덕철학', '194', '사회윤리'),
('190', '윤리학, 도덕철학', '195', '직업윤리 일반'),
('190', '윤리학, 도덕철학', '196', '오락 및 경기윤리'),
('190', '윤리학, 도덕철학', '197', '성윤리 및 생식윤리'),
('190', '윤리학, 도덕철학', '198', '소비윤리'),
('190', '윤리학, 도덕철학', '199', '도덕훈, 교훈');

-- Insert additional data
INSERT INTO Category (MainCategoryCode, MainCategoryName, SubCategoryCode, SubCategoryName) VALUES
('200', '종교', '201', '종교철학 및 종교사상'),
('200', '종교', '202', '잠저'),
('200', '종교', '203', '사전(辭典), 사전(事典)'),
('200', '종교', '204', '자연종교, 자연신학'),
('200', '종교', '205', '연속간행물'),
('200', '종교', '206', '학회, 단체, 협회, 기관, 회의'),
('200', '종교', '207', '지도법, 연구법 및 교육, 교육자료'),
('200', '종교', '208', '총서, 전집, 선집'),
('200', '종교', '209', '종교사'),

('210', '비교종교', '211', '교리'),
('210', '비교종교', '212', '종교창시자(교주) 및 제자'),
('210', '비교종교', '213', '경전, 성전'),
('210', '비교종교', '214', '종교신앙, 신앙록, 신앙활동, 수도생활'),
('210', '비교종교', '215', '선교, 포교, 전도, 교육활동'),
('210', '비교종교', '216', '종단, 교단(교단론)'),
('210', '비교종교', '217', '예배형식, 의식, 의례'),
('210', '비교종교', '218', '종파, 교파'),
('210', '비교종교', '219', '신화, 신화학'),

('220', '불교', '221', '불교교리'),
('220', '불교', '222', '부처, 보살, 불제자'),
('220', '불교', '223', '경전(불전, 불경, 대장경)'),
('220', '불교', '224', '종교신앙, 신앙록, 신앙활동'),
('220', '불교', '225', '포교, 교무, 교화활동'),
('220', '불교', '226', '사원론'),
('220', '불교', '227', '법회, 의식, 행사(의례)'),
('220', '불교', '228', '종파'),
('220', '불교', '229', '라마교'),

('230', '기독교', '231', '기독교신학, 교의학(주진학)'),
('230', '기독교', '232', '예수 그리스도, 사도'),
('230', '기독교', '233', '성서(성경)'),
('230', '기독교', '234', '종교신앙, 신앙록, 신앙생활'),
('230', '기독교', '235', '포교, 교무, 교화활동, 목회학'),
('230', '기독교', '236', '교회론'),
('230', '기독교', '237', '예배, 의식, 성례'),
('230', '기독교', '238', '종파'),
('230', '기독교', '239', '유대교(유태교)'),

('240', '도교', '241', '교리, 신선사상'),
('240', '도교', '242', '교주, 개조(장도릉)'),
('240', '도교', '243', '도장'),
('240', '도교', '244', '신앙록, 신앙생활'),
('240', '도교', '245', '포교, 전도, 교육, 교육활동'),
('240', '도교', '246', '사원론(도관)'),
('240', '도교', '247', '행사, 법술'),
('240', '도교', '248', '교파'),
('240', '도교', '249', '[미사용]'),

('250', '천도교', '251', '교리'),
('250', '천도교', '252', '종교창시자(교주) 및 제자'),
('250', '천도교', '253', '경전, 성전'),
('250', '천도교', '254', '신앙록, 신앙생활, 수도생활'),
('250', '천도교', '255', '선교, 포교, 전도, 교육활동'),
('250', '천도교', '256', '종단, 교단(교단론)'),
('250', '천도교', '257', '예배형식, 의식, 의례'),
('250', '천도교', '258', '동학교판타'),
('250', '천도교', '259', '단군교, 대종교'),

('260', '[미사용]', '261', '[미사용]'),
('260', '[미사용]', '262', '[미사용]'),
('260', '[미사용]', '263', '[미사용]'),
('260', '[미사용]', '264', '[미사용]'),
('260', '[미사용]', '265', '[미사용]'),
('260', '[미사용]', '266', '[미사용]'),
('260', '[미사용]', '267', '[미사용]'),
('260', '[미사용]', '268', '[미사용]'),
('260', '[미사용]', '269', '[미사용]'),

('270', '힌두교, 브라만교', '271', '교리, 교의'),
('270', '힌두교, 브라만교', '272', '창시자(교주) 및 제자'),
('270', '힌두교, 브라만교', '273', '경전, 성전'),
('270', '힌두교, 브라만교', '274', '신앙록, 신앙생활, 수도생활'),
('270', '힌두교, 브라만교', '275', '선교, 포교, 전도, 교육활동'),
('270', '힌두교, 브라만교', '276', '종단, 교단'),
('270', '힌두교, 브라만교', '277', '예배형식, 의식, 의례'),
('270', '힌두교, 브라만교', '278', '종파, 교파'),
('270', '힌두교, 브라만교', '279', '자이나교'),

('280', '이슬람교(회교)', '281', '교리, 교의'),
('280', '이슬람교(회교)', '282', '종교창시자(교주) 및 제자'),
('280', '이슬람교(회교)', '283', '경전, 성전'),
('280', '이슬람교(회교)', '284', '종교신앙, 신앙록, 신앙생활, 수도생활'),
('280', '이슬람교(회교)', '285', '선교, 포교, 전도, 교육활동'),
('280', '이슬람교(회교)', '286', '종단, 교단'),
('280', '이슬람교(회교)', '287', '예배형식, 의식, 의례'),
('280', '이슬람교(회교)', '288', '종파, 교파'),
('280', '이슬람교(회교)', '289', '수프리즘(수피즘, 배교파)'),

('290', '기타 제종교', '291', '아시아'),
('290', '기타 제종교', '292', '유럽'),
('290', '기타 제종교', '293', '아프리카'),
('290', '기타 제종교', '294', '북아메리카'),
('290', '기타 제종교', '295', '남아메리카'),
('290', '기타 제종교', '296', '오세아니아, 양극지방'),
('290', '기타 제종교', '297', '[미사용]'),
('290', '기타 제종교', '298', '[미사용]'),
('290', '기타 제종교', '299', '기타 다른 기원의 종교');

-- Insert additional data
INSERT INTO Category (MainCategoryCode, MainCategoryName, SubCategoryCode, SubCategoryName) VALUES
('300', '사회과학', '301', '사회사상'),
('300', '사회과학', '302', '잠저'),
('300', '사회과학', '303', '사전(辭典), 사전(事典)'),
('300', '사회과학', '304', '강연집, 수필집, 연설문집'),
('300', '사회과학', '305', '연속간행물'),
('300', '사회과학', '306', '학회, 단체, 협회, 기관, 회의'),
('300', '사회과학', '307', '연구법, 연구방법 및 교육, 교육자료'),
('300', '사회과학', '308', '총서, 전집, 선집'),
('300', '사회과학', '309', '사회문헌 사정'),

('310', '통계자료', '311', '아시아'),
('310', '통계자료', '312', '유럽'),
('310', '통계자료', '313', '아프리카'),
('310', '통계자료', '314', '북아메리카'),
('310', '통계자료', '315', '남아메리카'),
('310', '통계자료', '316', '오세아니아, 양극지방'),
('310', '통계자료', '317', '일반지역'),
('310', '통계자료', '318', '[미사용]'),
('310', '통계자료', '319', '인구통계'),

('320', '경제학', '321', '경제학론'),
('320', '경제학', '322', '경제정책'),
('320', '경제학', '323', '산업경제, 일반'),
('320', '경제학', '324', '기업경제'),
('320', '경제학', '325', '경영, 금융, 통신'),
('320', '경제학', '326', '산업'),
('320', '경제학', '327', '금융'),
('320', '경제학', '328', '보험'),
('320', '경제학', '329', '재정'),

('330', '사회학, 사회문제', '331', '사회학'),
('330', '사회학, 사회문제', '332', '사회 조직 및 제도'),
('330', '사회학, 사회문제', '333', '[미사용]'),
('330', '사회학, 사회문제', '334', '사회문제'),
('330', '사회학, 사회문제', '335', '생활문제'),
('330', '사회학, 사회문제', '336', '[미사용]'),
('330', '사회학, 사회문제', '337', '여성문제'),
('330', '사회학, 사회문제', '338', '사회복지'),
('330', '사회학, 사회문제', '339', '사회단체'),

('340', '정치학', '341', '국가형태'),
('340', '정치학', '342', '국가와 개인 및 집단'),
('340', '정치학', '343', '[미사용]'),
('340', '정치학', '344', '선거'),
('340', '정치학', '345', '입법'),
('340', '정치학', '346', '정당'),
('340', '정치학', '347', '[미사용]'),
('340', '정치학', '348', '[미사용]'),
('340', '정치학', '349', '외교, 국제관계'),

('350', '행정학', '351', '아시아'),
('350', '행정학', '352', '유럽'),
('350', '행정학', '353', '아프리카'),
('350', '행정학', '354', '북아메리카'),
('350', '행정학', '355', '남아메리카'),
('350', '행정학', '356', '오세아니아, 양극지방'),
('350', '행정학', '357', '일반지역'),
('350', '행정학', '358', '[미사용]'),
('350', '행정학', '359', '지방자치 및 지방행정'),

('360', '법률, 법학', '361', '국제법'),
('360', '법률, 법학', '362', '헌법'),
('360', '법률, 법학', '363', '행정법'),
('360', '법률, 법학', '364', '형법'),
('360', '법률, 법학', '365', '민법'),
('360', '법률, 법학', '366', '상법'),
('360', '법률, 법학', '367', '사법제도 및 소송법'),
('360', '법률, 법학', '368', '기타 제법'),
('360', '법률, 법학', '369', '각국 법 및 예규'),

('370', '교육학', '371', '교육 정책 및 행정'),
('370', '교육학', '372', '학교 행정 및 경영, 보건 및 교육지도'),
('370', '교육학', '373', '학습지도, 교육방법'),
('370', '교육학', '374', '교육과정'),
('370', '교육학', '375', '유아 및 초등교육'),
('370', '교육학', '376', '중등교육'),
('370', '교육학', '377', '대학, 전문, 고등교육'),
('370', '교육학', '378', '평생교육'),
('370', '교육학', '379', '특수교육'),

('380', '풍습, 예절, 민속학', '381', '의식주의 풍습'),
('380', '풍습, 예절, 민속학', '382', '연령별, 성별, 신분별, 사회계층의 풍습'),
('380', '풍습, 예절, 민속학', '383', '사회생활풍습'),
('380', '풍습, 예절, 민속학', '384', '관혼상제'),
('380', '풍습, 예절, 민속학', '385', '예절'),
('380', '풍습, 예절, 민속학', '386', '제례, 세시풍속'),
('380', '풍습, 예절, 민속학', '387', '[미사용]'),
('380', '풍습, 예절, 민속학', '388', '민속학'),
('380', '풍습, 예절, 민속학', '389', '문화인류학'),

('390', '국방, 군사학', '391', '군사행정'),
('390', '국방, 군사학', '392', '전략, 전술'),
('390', '국방, 군사학', '393', '군사 교육 및 훈련'),
('390', '국방, 군사학', '394', '군사 시설 및 장비'),
('390', '국방, 군사학', '395', '군동수기술군의'),
('390', '국방, 군사학', '396', '육군'),
('390', '국방, 군사학', '397', '해군'),
('390', '국방, 군사학', '398', '공군'),
('390', '국방, 군사학', '399', '고대병법');

-- Insert additional data
INSERT INTO Category (MainCategoryCode, MainCategoryName, SubCategoryCode, SubCategoryName) VALUES
('400', '자연과학', '401', '철학 및 이론'),
('400', '자연과학', '402', '잠저(편람, 제표, 서지, 인명록)'),
('400', '자연과학', '403', '사전, 백과사전'),
('400', '자연과학', '404', '강연집, 수필집, 연설문집'),
('400', '자연과학', '405', '연속간행물'),
('400', '자연과학', '406', '학회, 단체, 기관, 회의'),
('400', '자연과학', '407', '지도법, 연구법 및 교육, 교육자료'),
('400', '자연과학', '408', '전집, 총서'),
('400', '자연과학', '409', '과학사'),

('410', '수학', '411', '산수'),
('410', '수학', '412', '대수학'),
('410', '수학', '413', '통계학'),
('410', '수학', '414', '해석학'),
('410', '수학', '415', '기하학'),
('410', '수학', '416', '수리학'),
('410', '수학', '417', '삼각법'),
('410', '수학', '418', '해석기하학'),
('410', '수학', '419', '기타 산법'),

('420', '물리학', '421', '고체역학'),
('420', '물리학', '422', '유체역학'),
('420', '물리학', '423', '기체역학'),
('420', '물리학', '424', '음향학, 진동학'),
('420', '물리학', '425', '광학'),
('420', '물리학', '426', '열학'),
('420', '물리학', '427', '전기학 및 전자학'),
('420', '물리학', '428', '자기'),
('420', '물리학', '429', '현대물리학'),

('430', '화학', '431', '이론화학과 물리화학'),
('430', '화학', '432', '화학 실험실, 기기, 실험법'),
('430', '화학', '433', '분석화학'),
('430', '화학', '434', '합성화학 일반'),
('430', '화학', '435', '무기화학'),
('430', '화학', '436', '유기화학'),
('430', '화학', '437', '고리화합물'),
('430', '화학', '438', '고분자화합물과 기타 유기물'),

('440', '천문학', '441', '이론천문학'),
('440', '천문학', '442', '실천천문학'),
('440', '천문학', '443', '기술천문학'),
('440', '천문학', '444', '[미사용]'),
('440', '천문학', '445', '지구'),
('440', '천문학', '446', '지구자전'),
('440', '천문학', '447', '항해천문학'),
('440', '천문학', '448', '역법, 측시법'),
('440', '천문학', '449', '각국의 역'),

('450', '지학', '451', '지구물리학'),
('450', '지학', '452', '지형학'),
('450', '지학', '453', '기상학, 기후학'),
('450', '지학', '454', '해양학'),
('450', '지학', '455', '구조지질학'),
('450', '지학', '456', '지사학'),
('450', '지학', '457', '생물지학(화석학)'),
('450', '지학', '458', '응용지질학 일반 및 광상학'),
('450', '지학', '459', '암석학'),

('460', '광물학', '461', '원소광물'),
('460', '광물학', '462', '화합광물'),
('460', '광물학', '463', '할로겐화광물'),
('460', '광물학', '464', '산화광물'),
('460', '광물학', '465', '규산 및 규산염광물'),
('460', '광물학', '466', '기타 산화물을 포함한 광물'),
('460', '광물학', '467', '유기광물'),
('460', '광물학', '468', '[미사용]'),
('460', '광물학', '469', '결정학'),

('470', '생명과학', '471', '인류학'),
('470', '생명과학', '472', '생물학'),
('470', '생명과학', '473', '생물학, 생물철학'),
('470', '생명과학', '474', '세포학(세포생물학)'),
('470', '생명과학', '475', '미생물학'),
('470', '생명과학', '476', '생물진화'),
('470', '생명과학', '477', '생물지리학'),
('470', '생명과학', '478', '현미경 및 현미경검사법 일반'),
('470', '생명과학', '479', '생물 채집 및 보존'),

('480', '식물학', '481', '일반 식물학'),
('480', '식물학', '482', '화훼학'),
('480', '식물학', '483', '염생식물'),
('480', '식물학', '484', '조류'),
('480', '식물학', '485', '현화식물, 종자식물'),
('480', '식물학', '486', '나자식물'),
('480', '식물학', '487', '피자식물'),
('480', '식물학', '488', '단자엽식물'),
('480', '식물학', '489', '쌍자엽식물'),

('490', '동물학', '491', '일반 동물학'),
('490', '동물학', '492', '무척추동물'),
('490', '동물학', '493', '원생동물, 해면동물, 자포동물, 선형동물 등'),
('490', '동물학', '494', '연체동물, 의연체동물'),
('490', '동물학', '495', '절지동물, 고충류'),
('490', '동물학', '496', '척색(척삭)동물'),
('490', '동물학', '497', '어류, 양서류, 파충류'),
('490', '동물학', '498', '조류'),
('490', '동물학', '499', '포유류');

-- Insert additional data
INSERT INTO Category (MainCategoryCode, MainCategoryName, SubCategoryCode, SubCategoryName) VALUES
('500', '기술과학', '501', '기술 철학 및 이론'),
('500', '기술과학', '502', '잠저'),
('500', '기술과학', '503', '사전, 백과사전, 용어사전'),
('500', '기술과학', '504', '강연집, 수필집, 연설문집'),
('500', '기술과학', '505', '연속간행물'),
('500', '기술과학', '506', '학회, 단체, 기관, 회의'),
('500', '기술과학', '507', '연구법 및 교육지도법'),
('500', '기술과학', '508', '전집, 총서'),
('500', '기술과학', '509', '기술사'),

('510', '의학', '511', '기초의학'),
('510', '의학', '512', '임상의학 일반'),
('510', '의학', '513', '내과학'),
('510', '의학', '514', '외과학'),
('510', '의학', '515', '치과의학, 이비인후과학, 안과학 및 기타 임상의학'),
('510', '의학', '516', '산부인과, 소아과학'),
('510', '의학', '517', '감염증진, 공중보건 및 예방의학'),
('510', '의학', '518', '약학'),
('510', '의학', '519', '한의학'),

('520', '농업, 농학', '521', '농업기초학'),
('520', '농업, 농학', '522', '농업경제'),
('520', '농업, 농학', '523', '재배 및 보호'),
('520', '농업, 농학', '524', '자원학'),
('520', '농업, 농학', '525', '원예'),
('520', '농업, 농학', '526', '임학, 임업'),
('520', '농업, 농학', '527', '축산학'),
('520', '농업, 농학', '528', '수의학'),
('520', '농업, 농학', '529', '수산업, 생물자원 보호, 수렵업'),

('530', '공학, 공업일반, 토목공학, 환경공학', '531', '토목공학'),
('530', '공학, 공업일반, 토목공학, 환경공학', '532', '토목역학, 토목재료'),
('530', '공학, 공업일반, 토목공학, 환경공학', '533', '측량학'),
('530', '공학, 공업일반, 토목공학, 환경공학', '534', '도로공학'),
('530', '공학, 공업일반, 토목공학, 환경공학', '535', '철도공학'),
('530', '공학, 공업일반, 토목공학, 환경공학', '536', '교량공학'),
('530', '공학, 공업일반, 토목공학, 환경공학', '537', '수리공학'),
('530', '공학, 공업일반, 토목공학, 환경공학', '538', '항만공학'),
('530', '공학, 공업일반, 토목공학, 환경공학', '539', '위생, 도시, 환경공학'),

('540', '건축, 건축학', '541', '건축재료'),
('540', '건축, 건축학', '542', '건축 시공 및 적산'),
('540', '건축, 건축학', '543', '구조역학 및 건축설계구조'),
('540', '건축, 건축학', '544', '친환경건축 및 특목건축물'),
('540', '건축, 건축학', '545', '건물 세부구조'),
('540', '건축, 건축학', '546', '건축설계, 설비, 배관 및 파이프 부설'),
('540', '건축, 건축학', '547', '난방, 환기 및 공기조화학'),
('540', '건축, 건축학', '548', '건축디자인 및 인테리어'),
('540', '건축, 건축학', '549', '각종 건물'),

('550', '기계공학', '551', '기계 역학, 요소 및 설계'),
('550', '기계공학', '552', '공구와 장비'),
('550', '기계공학', '553', '응용역학 일반'),
('550', '기계공학', '554', '열역학, 공기역학, 전공학'),
('550', '기계공학', '555', '원동기'),
('550', '기계공학', '556', '자동차공학'),
('550', '기계공학', '557', '철도차량, 기관차'),
('550', '기계공학', '558', '항공우주공학, 우주탐험학'),
('550', '기계공학', '559', '기타공학'),

('560', '전기공학, 통신공학, 전자공학', '561', '전기 회로, 계측, 재료'),
('560', '전기공학, 통신공학, 전자공학', '562', '전기 기계 및 기구'),
('560', '전기공학, 통신공학, 전자공학', '563', '발전'),
('560', '전기공학, 통신공학, 전자공학', '564', '송전, 배전'),
('560', '전기공학, 통신공학, 전자공학', '565', '전등, 조명, 전열'),
('560', '전기공학, 통신공학, 전자공학', '566', '전신, 전화'),
('560', '전기공학, 통신공학, 전자공학', '567', '무선공학'),
('560', '전기공학, 통신공학, 전자공학', '568', '[미사용]'),
('560', '전기공학, 통신공학, 전자공학', '569', '전자공학'),

('570', '화학공학', '571', '공업화학약품'),
('570', '화학공학', '572', '폭발물, 연료 공업'),
('570', '화학공학', '573', '응용기술'),
('570', '화학공학', '574', '식품공학'),
('570', '화학공학', '575', '염료, 페인트, 석유, 가스 공업'),
('570', '화학공학', '576', '요업 및 관련공업'),
('570', '화학공학', '577', '세탁, 염색 및 관련공업'),
('570', '화학공학', '578', '고분자화학공업'),
('570', '화학공학', '579', '기타 유기화학공업'),

('580', '제조업', '581', '금속 재조 및 가공업'),
('580', '제조업', '582', '철 및 강철 제품'),
('580', '제조업', '583', '철기류 및 소규모철공업'),
('580', '제조업', '584', '제지업, 목공업, 목제품'),
('580', '제조업', '585', '피혁 및 모피 공업'),
('580', '제조업', '586', '직물, 종이 및 관련공업'),
('580', '제조업', '587', '직물 인쇄공업'),
('580', '제조업', '588', '의류제조업'),
('580', '제조업', '589', '소형상품제조업'),

('590', '생활과학', '591', '가정관리 및 가정생활'),
('590', '생활과학', '592', '의복'),
('590', '생활과학', '593', '주거, 주거장소(집단장소)'),
('590', '생활과학', '594', '식품과 음료'),
('590', '생활과학', '595', '식품과 음료 가정설비'),
('590', '생활과학', '596', '공동주거용 주택 시설관리'),
('590', '생활과학', '597', '가정위생'),
('590', '생활과학', '598', '육아'),
('590', '생활과학', '599', '[미사용]');

-- Insert additional data
INSERT INTO Category (MainCategoryCode, MainCategoryName, SubCategoryCode, SubCategoryName) VALUES
('600', '예술', '601', '미술이론, 미학'),
('600', '예술', '602', '미술 재료 및 기법'),
('600', '예술', '603', '미술 용어사전, 백과사전'),
('600', '예술', '604', '미술의 주제'),
('600', '예술', '605', '미술연속간행물'),
('600', '예술', '606', '미술분야의 학회, 단체, 기관, 회의'),
('600', '예술', '607', '미술의 지도법, 연구법 및 교육, 교육자료'),
('600', '예술', '608', '미술 전집, 총서'),
('600', '예술', '609', '미술사'),

('610', '[미사용]', '611', '[미사용]'),
('610', '[미사용]', '612', '[미사용]'),
('610', '[미사용]', '613', '[미사용]'),
('610', '[미사용]', '614', '[미사용]'),
('610', '[미사용]', '615', '[미사용]'),
('610', '[미사용]', '616', '[미사용]'),
('610', '[미사용]', '617', '[미사용]'),
('610', '[미사용]', '618', '[미사용]'),
('610', '[미사용]', '619', '[미사용]'),

('620', '조각, 조형미술', '621', '[미사용]'),
('620', '조각, 조형미술', '622', '조소 재료 및 기법'),
('620', '조각, 조형미술', '623', '목조'),
('620', '조각, 조형미술', '624', '석조'),
('620', '조각, 조형미술', '625', '금동조'),
('620', '조각, 조형미술', '626', '점토조소, 소조'),
('620', '조각, 조형미술', '627', '기타 재료'),
('620', '조각, 조형미술', '628', '전각, 인장'),
('620', '조각, 조형미술', '629', '제상'),

('630', '공예', '631', '도자공예, 유리공예'),
('630', '공예', '632', '금속공예'),
('630', '공예', '633', '보석, 갑각, 패류, 알 공예'),
('630', '공예', '634', '목, 죽, 화훼, 왕골 공예'),
('630', '공예', '635', '칠공예'),
('630', '공예', '636', '염직공예, 섬유공예'),
('630', '공예', '637', '고무, 플라스틱 공예'),
('630', '공예', '638', '미술가구'),
('630', '공예', '639', '[미사용]'),

('640', '서예', '641', '한자서체'),
('640', '서예', '642', '한문서법'),
('640', '서예', '643', '한글서체'),
('640', '서예', '644', '기타 서법'),
('640', '서예', '645', '[미사용]'),
('640', '서예', '646', '필순법'),
('640', '서예', '647', '낙관, 수결(명)'),
('640', '서예', '648', '서보, 서전, 법첩'),
('640', '서예', '649', '문방구'),

('650', '회화, 도화, 디자인', '651', '채색 이론 및 실제'),
('650', '회화, 도화, 디자인', '652', '회화의 재료 및 기법'),
('650', '회화, 도화, 디자인', '653', '시대별 및 국별 회화'),
('650', '회화, 도화, 디자인', '654', '주제별 회화'),
('650', '회화, 도화, 디자인', '655', '[미사용]'),
('650', '회화, 도화, 디자인', '656', '소묘, 도화'),
('650', '회화, 도화, 디자인', '657', '만화, 삽화'),
('650', '회화, 도화, 디자인', '658', '디자인'),
('650', '회화, 도화, 디자인', '659', '판화'),

('660', '사진예술', '661', '사진기기, 사진재료'),
('660', '사진예술', '662', '사진촬영기술'),
('660', '사진예술', '663', '음화처리'),
('660', '사진예술', '664', '양화처리(인화)'),
('660', '사진예술', '665', '[미사용]'),
('660', '사진예술', '666', '특수사진술'),
('660', '사진예술', '667', '사진응용'),
('660', '사진예술', '668', '사진집'),
('660', '사진예술', '669', '[미사용]'),

('670', '음악', '671', '음악 이론 및 기법'),
('670', '음악', '672', '종교음악'),
('670', '음악', '673', '성악'),
('670', '음악', '674', '극음악, 오페라'),
('670', '음악', '675', '건반악기 및 타악기'),
('670', '음악', '676', '현악기'),
('670', '음악', '677', '관악기(취주악기)'),
('670', '음악', '678', '한국음악 및 동양전통음악'),
('670', '음악', '679', '[미사용]'),

('680', '공연예술, 매체예술', '681', '극작, 제작, 연출, 연기'),
('680', '공연예술, 매체예술', '682', '연희'),
('680', '공연예술, 매체예술', '683', '[미사용]'),
('680', '공연예술, 매체예술', '684', '각종극'),
('680', '공연예술, 매체예술', '685', '무용, 발레'),
('680', '공연예술, 매체예술', '686', '라디오극(방송극) 및 음성(소리) 매체예술'),
('680', '공연예술, 매체예술', '687', '텔레비전극 및 시청각매체 방송 예술'),
('680', '공연예술, 매체예술', '688', '영화'),
('680', '공연예술, 매체예술', '689', '대중연예'),

('690', '오락, 스포츠', '691', '오락'),
('690', '오락, 스포츠', '692', '체육학, 스포츠'),
('690', '오락, 스포츠', '693', '체조, 놀이'),
('690', '오락, 스포츠', '694', '육상경기'),
('690', '오락, 스포츠', '695', '수상경기, 공중경기'),
('690', '오락, 스포츠', '696', '동계스포츠'),
('690', '오락, 스포츠', '697', '오락 및 기타 경기'),
('690', '오락, 스포츠', '698', '[미사용]'),
('690', '오락, 스포츠', '699', '기타 오락 및 레저스포츠');

-- Insert additional data
INSERT INTO Category (MainCategoryCode, MainCategoryName, SubCategoryCode, SubCategoryName) VALUES
('700', '언어', '701', '언어학'),
('700', '언어', '702', '잠저'),
('700', '언어', '703', '사전'),
('700', '언어', '704', '강연집, 수필집'),
('700', '언어', '705', '연속간행물'),
('700', '언어', '706', '학회, 단체, 기관, 회의'),
('700', '언어', '707', '지도법, 연구법 및 교육, 교육자료'),
('700', '언어', '708', '전집, 총서'),
('700', '언어', '709', '언어사 및 언어정책, 언어행정'),

('710', '한국어', '711', '음운, 음성, 문자'),
('710', '한국어', '712', '어원, 어의'),
('710', '한국어', '713', '사전'),
('710', '한국어', '714', '어휘'),
('710', '한국어', '715', '문법'),
('710', '한국어', '716', '작문'),
('710', '한국어', '717', '독본, 해석, 회화'),
('710', '한국어', '718', '방언(사투리)'),
('710', '한국어', '719', '[미사용]'),

('720', '중국어', '721', '음운, 음성, 문자'),
('720', '중국어', '722', '어원, 어의'),
('720', '중국어', '723', '사전'),
('720', '중국어', '724', '어휘'),
('720', '중국어', '725', '문법, 어법'),
('720', '중국어', '726', '작문'),
('720', '중국어', '727', '독본, 해석, 회화'),
('720', '중국어', '728', '방언(사투리)'),
('720', '중국어', '729', '[미사용]'),

('730', '일본어 및 기타 아시아 제어', '731', '음운, 음성, 문자'),
('730', '일본어 및 기타 아시아 제어', '732', '어원, 어의'),
('730', '일본어 및 기타 아시아 제어', '733', '사전'),
('730', '일본어 및 기타 아시아 제어', '734', '어휘'),
('730', '일본어 및 기타 아시아 제어', '735', '문법, 어법'),
('730', '일본어 및 기타 아시아 제어', '736', '작문'),
('730', '일본어 및 기타 아시아 제어', '737', '독본, 해석, 회화'),
('730', '일본어 및 기타 아시아 제어', '738', '방언(사투리)'),
('730', '일본어 및 기타 아시아 제어', '739', '기타 아시아 제어'),

('740', '영어', '741', '음운, 음성, 문자'),
('740', '영어', '742', '어원, 어의'),
('740', '영어', '743', '사전'),
('740', '영어', '744', '어휘'),
('740', '영어', '745', '문법'),
('740', '영어', '746', '작문'),
('740', '영어', '747', '독본, 해석, 회화'),
('740', '영어', '748', '방언(사투리)'),
('740', '영어', '749', '앵글로색슨어'),

('750', '독일어', '751', '음운, 음성, 문자'),
('750', '독일어', '752', '어원, 어의'),
('750', '독일어', '753', '사전'),
('750', '독일어', '754', '어휘'),
('750', '독일어', '755', '문법'),
('750', '독일어', '756', '작문'),
('750', '독일어', '757', '독본, 해석, 회화'),
('750', '독일어', '758', '방언(사투리)'),
('750', '독일어', '759', '기타 게르만어파'),

('760', '프랑스어', '761', '음운, 음성, 문자'),
('760', '프랑스어', '762', '어원, 어의'),
('760', '프랑스어', '763', '사전'),
('760', '프랑스어', '764', '어휘'),
('760', '프랑스어', '765', '문법'),
('760', '프랑스어', '766', '작문'),
('760', '프랑스어', '767', '독본, 해석, 회화'),
('760', '프랑스어', '768', '방언(사투리)'),
('760', '프랑스어', '769', '프랑스어파'),

('770', '스페인어 및 포르투갈어', '771', '음운, 음성, 문자'),
('770', '스페인어 및 포르투갈어', '772', '어원, 어의'),
('770', '스페인어 및 포르투갈어', '773', '사전'),
('770', '스페인어 및 포르투갈어', '774', '어휘'),
('770', '스페인어 및 포르투갈어', '775', '문법'),
('770', '스페인어 및 포르투갈어', '776', '작문'),
('770', '스페인어 및 포르투갈어', '777', '독본, 해석, 회화'),
('770', '스페인어 및 포르투갈어', '778', '방언(사투리)'),
('770', '스페인어 및 포르투갈어', '779', '포르투갈어'),

('780', '이탈리아어', '781', '음운, 음성, 문자'),
('780', '이탈리아어', '782', '어원, 어의'),
('780', '이탈리아어', '783', '사전'),
('780', '이탈리아어', '784', '어휘'),
('780', '이탈리아어', '785', '문법'),
('780', '이탈리아어', '786', '작문'),
('780', '이탈리아어', '787', '독본, 해석, 회화'),
('780', '이탈리아어', '788', '방언(사투리)'),
('780', '이탈리아어', '789', '[미사용]'),

('790', '기타 제어', '791', '[미사용]'),
('790', '기타 제어', '792', '인도-유럽어족'),
('790', '기타 제어', '793', '아프리카계 언어'),
('790', '기타 제어', '794', '북아메리카 인디언어'),
('790', '기타 제어', '795', '남아메리카 인디언어'),
('790', '기타 제어', '796', '오스트로네시아어족'),
('790', '기타 제어', '797', '셈어(셈족어), 아람어(셈아어) 및 아라비아어'),
('790', '기타 제어', '798', '국제어(인공어) 및 기타 언어'),
('790', '기타 제어', '799', '[미사용]');

-- Insert additional data
INSERT INTO Category (MainCategoryCode, MainCategoryName, SubCategoryCode, SubCategoryName) VALUES
('800', '문학', '801', '문학이론'),
('800', '문학', '802', '문장작법, 수사학'),
('800', '문학', '803', '사전(辭典), 사전(事典)'),
('800', '문학', '804', '수필집, 강연집'),
('800', '문학', '805', '연속간행물'),
('800', '문학', '806', '학회, 단체, 기관, 회의'),
('800', '문학', '807', '지도법 및 연구법, 교육, 교육자료'),
('800', '문학', '808', '전집, 총서'),
('800', '문학', '809', '문학사, 평론'),

('810', '한국문학', '811', '시'),
('810', '한국문학', '812', '희곡'),
('810', '한국문학', '813', '소설'),
('810', '한국문학', '814', '수필'),
('810', '한국문학', '815', '연설, 웅변'),
('810', '한국문학', '816', '일기, 서간, 기행'),
('810', '한국문학', '817', '종자 및 유머'),
('810', '한국문학', '818', '프로타주 및 기타'),
('810', '한국문학', '819', '[미사용]'),

('820', '중국문학', '821', '시'),
('820', '중국문학', '822', '희곡'),
('820', '중국문학', '823', '소설'),
('820', '중국문학', '824', '수필'),
('820', '중국문학', '825', '연설, 웅변'),
('820', '중국문학', '826', '일기, 서간, 기행'),
('820', '중국문학', '827', '종자 및 유머'),
('820', '중국문학', '828', '프로타주 및 기타'),
('820', '중국문학', '829', '[미사용]'),

('830', '일본문학 및 기타 아시아 제문학', '831', '시'),
('830', '일본문학 및 기타 아시아 제문학', '832', '희곡'),
('830', '일본문학 및 기타 아시아 제문학', '833', '소설'),
('830', '일본문학 및 기타 아시아 제문학', '834', '수필'),
('830', '일본문학 및 기타 아시아 제문학', '835', '연설, 웅변'),
('830', '일본문학 및 기타 아시아 제문학', '836', '일기, 서간, 기행'),
('830', '일본문학 및 기타 아시아 제문학', '837', '종자 및 유머'),
('830', '일본문학 및 기타 아시아 제문학', '838', '프로타주 및 기타'),
('830', '일본문학 및 기타 아시아 제문학', '839', '기타 아시아 제문학'),

('840', '영미문학', '841', '시'),
('840', '영미문학', '842', '희곡'),
('840', '영미문학', '843', '소설'),
('840', '영미문학', '844', '수필'),
('840', '영미문학', '845', '연설, 웅변'),
('840', '영미문학', '846', '일기, 서간, 기행'),
('840', '영미문학', '847', '종자 및 유머'),
('840', '영미문학', '848', '프로타주 및 기타'),
('840', '영미문학', '849', '미국문학'),

('850', '독일문학', '851', '시'),
('850', '독일문학', '852', '희곡'),
('850', '독일문학', '853', '소설'),
('850', '독일문학', '854', '수필'),
('850', '독일문학', '855', '연설, 웅변'),
('850', '독일문학', '856', '일기, 서간, 기행'),
('850', '독일문학', '857', '종자 및 유머'),
('850', '독일문학', '858', '프로타주 및 기타'),
('850', '독일문학', '859', '기타 게르만문학'),

('860', '프랑스 문학', '861', '시'),
('860', '프랑스 문학', '862', '희곡'),
('860', '프랑스 문학', '863', '소설'),
('860', '프랑스 문학', '864', '수필'),
('860', '프랑스 문학', '865', '연설, 웅변'),
('860', '프랑스 문학', '866', '일기, 서간, 기행'),
('860', '프랑스 문학', '867', '종자 및 유머'),
('860', '프랑스 문학', '868', '프로타주 및 기타'),
('860', '프랑스 문학', '869', '프로방스문학'),

('870', '스페인 및 포르투갈 문학', '871', '시'),
('870', '스페인 및 포르투갈 문학', '872', '희곡'),
('870', '스페인 및 포르투갈 문학', '873', '소설'),
('870', '스페인 및 포르투갈 문학', '874', '수필'),
('870', '스페인 및 포르투갈 문학', '875', '연설, 웅변'),
('870', '스페인 및 포르투갈 문학', '876', '일기, 서간, 기행'),
('870', '스페인 및 포르투갈 문학', '877', '종자 및 유머'),
('870', '스페인 및 포르투갈 문학', '878', '프로타주 및 기타'),
('870', '스페인 및 포르투갈 문학', '879', '포르투갈문학'),

('880', '이탈리아 문학', '881', '시'),
('880', '이탈리아 문학', '882', '희곡'),
('880', '이탈리아 문학', '883', '소설'),
('880', '이탈리아 문학', '884', '수필'),
('880', '이탈리아 문학', '885', '연설, 웅변'),
('880', '이탈리아 문학', '886', '일기, 서간, 기행'),
('880', '이탈리아 문학', '887', '종자 및 유머'),
('880', '이탈리아 문학', '888', '프로타주 및 기타'),
('880', '이탈리아 문학', '889', '루마니아문학'),

('890', '기타 제문학', '891', '[미사용]'),
('890', '기타 제문학', '892', '인도-유럽계 문학'),
('890', '기타 제문학', '893', '아프리카 제문학'),
('890', '기타 제문학', '894', '북아메리카 인디언문학'),
('890', '기타 제문학', '895', '남아메리카 인디언문학'),
('890', '기타 제문학', '896', '오스트로네시아문학'),
('890', '기타 제문학', '897', '셈족문학'),
('890', '기타 제문학', '898', '항공문학'),
('890', '기타 제문학', '899', '기타 문학');

-- Insert additional data
INSERT INTO Category (MainCategoryCode, MainCategoryName, SubCategoryCode, SubCategoryName) VALUES
('900', '역사', '901', '역사 철학 및 이론'),
('900', '역사', '902', '역사보조학'),
('900', '역사', '903', '사전(辭典), 사전(事典)'),
('900', '역사', '904', '강연집, 사평'),
('900', '역사', '905', '연속간행물'),
('900', '역사', '906', '학회, 단체, 기관, 회의'),
('900', '역사', '907', '지도법, 연구법 및 교육, 교육자료'),
('900', '역사', '908', '전집, 총서'),
('900', '역사', '909', '세계사, 세계문화사'),

('910', '아시아', '911', '한국'),
('910', '아시아', '912', '중국'),
('910', '아시아', '913', '일본'),
('910', '아시아', '914', '동남아시아'),
('910', '아시아', '915', '인디아와 남부아시아'),
('910', '아시아', '916', '중앙아시아'),
('910', '아시아', '917', '시베리아'),
('910', '아시아', '918', '서남아시아, 중동'),
('910', '아시아', '919', '아라비아반도와 인접지역'),

('920', '유럽', '921', '고대 그리스(희랍고대사)'),
('920', '유럽', '922', '고대 로마'),
('920', '유럽', '923', '스칸디나비아'),
('920', '유럽', '924', '영국, 아일랜드'),
('920', '유럽', '925', '독일과 중양유럽'),
('920', '유럽', '926', '프랑스와 인접국가'),
('920', '유럽', '927', '스페인과 인접국가'),
('920', '유럽', '928', '이탈리아와 인접국가'),
('920', '유럽', '929', '러시아와 동부유럽'),

('930', '아프리카', '931', '북아프리카'),
('930', '아프리카', '932', '[미사용]'),
('930', '아프리카', '933', '서아프리카'),
('930', '아프리카', '934', '중앙아프리카'),
('930', '아프리카', '935', '[미사용]'),
('930', '아프리카', '936', '남아프리카'),
('930', '아프리카', '937', '동아프리카'),
('930', '아프리카', '938', '남인도양제도'),

('940', '북아메리카', '941', '캐나다'),
('940', '북아메리카', '942', '미국(미합중국)'),
('940', '북아메리카', '943', '멕시코'),
('940', '북아메리카', '944', '중앙아메리카(중미제국)'),
('940', '북아메리카', '945', '과테말라, 벨리즈, 엘살바도르'),
('940', '북아메리카', '946', '온두라스'),
('940', '북아메리카', '947', '니카라과'),
('940', '북아메리카', '948', '코스타리카, 파나마'),
('940', '북아메리카', '949', '서인도제도'),

('950', '남아메리카', '951', '콜롬비아'),
('950', '남아메리카', '952', '베네수엘라와 기아나 지역'),
('950', '남아메리카', '953', '브라질'),
('950', '남아메리카', '954', '에콰도르'),
('950', '남아메리카', '955', '페루'),
('950', '남아메리카', '956', '볼리비아'),
('950', '남아메리카', '957', '파라과이, 우루과이'),
('950', '남아메리카', '958', '아르헨티나'),
('950', '남아메리카', '959', '칠레'),

('960', '오세아니아, 양극지방', '961', '[미사용]'),
('960', '오세아니아, 양극지방', '962', '오스트레일리아(호주)'),
('960', '오세아니아, 양극지방', '963', '뉴질랜드'),
('960', '오세아니아, 양극지방', '964', '파푸아뉴기니'),
('960', '오세아니아, 양극지방', '965', '멜라네시아'),
('960', '오세아니아, 양극지방', '966', '미크로네시아와 인접국가'),
('960', '오세아니아, 양극지방', '967', '폴리네시아와 하와이'),
('960', '오세아니아, 양극지방', '968', '대서양제도'),
('960', '오세아니아, 양극지방', '969', '양극지방'),

('970', '[미사용]', '971', '[미사용]'),
('970', '[미사용]', '972', '[미사용]'),
('970', '[미사용]', '973', '[미사용]'),
('970', '[미사용]', '974', '[미사용]'),
('970', '[미사용]', '975', '[미사용]'),
('970', '[미사용]', '976', '[미사용]'),
('970', '[미사용]', '977', '[미사용]'),
('970', '[미사용]', '978', '[미사용]'),
('970', '[미사용]', '979', '[미사용]'),

('980', '지리', '981', '아시아지리'),
('980', '지리', '982', '유럽지리'),
('980', '지리', '983', '아프리카지리'),
('980', '지리', '984', '북아메리카지리'),
('980', '지리', '985', '남아메리카지리'),
('980', '지리', '986', '오세아니아지리'),
('980', '지리', '987', '지구독특 일반지리'),
('980', '지리', '988', '해양'),
('980', '지리', '989', '지도 및 지도책'),

('990', '전기', '991', '아시아전기'),
('990', '전기', '992', '유럽전기'),
('990', '전기', '993', '아프리카전기'),
('990', '전기', '994', '북아메리카전기'),
('990', '전기', '995', '남아메리카전기'),
('990', '전기', '996', '오세아니아와 양극 전기'),
('990', '전기', '997', '[미사용]'),
('990', '전기', '998', '주제 전기'),
('990', '전기', '999', '계보, 족보');
