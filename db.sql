/*
- 테이블확인
select * from users;
select * from run_index;
select * from rider_index;
select * from question;
select * from answer;

- 테이블삭제
drop table users CASCADE CONSTRAINTS;
drop table run_index CASCADE CONSTRAINTS;
drop table rider_index CASCADE CONSTRAINTS;
drop table question CASCADE CONSTRAINTS;
drop table answer CASCADE CONSTRAINTS;

- 테이블 데이터 삭제
DELETE FROM RUN_INDEX;
DELETE FROM RIDER_INDEX;
DELETE FROM QUESTION;
DELETE FROM ANSWER;

- 시퀀스존재여부 확인
select * from users_num_seq;
select * from run_idx_num_seq;
select * from rider_idx_num_seq;
select * from que_idx_num_seq;
select * from ans_idx_num_seq;

- 시퀀스 현제 값 확인
select users_num_seq.currval from dual;
select run_idx_num_seq.currval from dual;
select rider_idx_num_seq.currval from dual;
select que_idx_num_seq.currval from dual;
select ans_idx_num_seq.currval from dual;

--시퀀스 삭제
drop SEQUENCE users_num_seq;
drop SEQUENCE run_idx_num_seq;
drop SEQUENCE rider_idx_num_seq;
drop SEQUENCE que_idx_num_seq;
drop SEQUENCE ans_idx_num_seq;

-- 현제 년/월/일 검색
select SYSDATE FROM DUAL;
-- 시간까지 표시 되게 설정 변경
ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS'; 


- 시퀀스 초기화
CREATE OR REPLACE PROCEDURE cocodas.reset_sequence (users_num_seq IN VARCHAR2) as curr_val INTEGER;
BEGIN
  EXECUTE IMMEDIATE 'alter sequence ' ||users_num_seq||' MINVALUE 0';
  EXECUTE IMMEDIATE 'SELECT ' ||users_num_seq ||'.nextval FROM dual' INTO curr_val;
  EXECUTE IMMEDIATE 'alter sequence ' ||users_num_seq||' increment by -'||curr_val;
  EXECUTE IMMEDIATE 'SELECT ' ||users_num_seq ||'.nextval FROM dual' INTO curr_val;
  EXECUTE IMMEDIATE 'alter sequence ' ||users_num_seq||' increment by 1';
END reset_sequence;

EXEC reset_sequence('users_num_seq');

--테이블 스페이스 만드는 법
1. 커맨드창띄운다
2. sqlplus / as sysdba  ---> 최고 관리자 모드로 접속
3. grant connect, resource, dba, exp_full_database, imp_full_database to [권한 부여 하고 싶은 유저명];
4. sql developer 계정 재접속
5. CREATE TABLESPACE [유저명] DATAFILE 'c:/[파일명].dbf' size 100M;

-- 현재 존재 하는 테이블 스페이스 현황
SELECT * FROM DBA_DATA_FILES;

-- 휴지통의 자료 삭제
purge recyclebin;
----------------------------------------------------------
*/

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';

CREATE TABLESPACE roadwith DATAFILE 'c:\roadwith.dbf' size 100M;

ALTER TABLESPACE roadwith
          ADD DATAFILE 'C:\roadwith.dbf' SIZE 100M
          AUTOEXTEND ON NEXT 10M
          MAXSIZE 500M;
/* roadwith 테이블 스페이스에 100M 추가, 100메가를 다 사용 하면 500M 될때까지 자동으로 10M씩 증가
  
  ALTER DATABASE DATAFILE ‘C:\roadwith.dbf'
                 AUTOEXTEND OFF;  ---> 자동확장 중단  */

/*----------------------로그인 회원 정보 페이지--------------------------------*/

drop table users CASCADE CONSTRAINTS;
drop SEQUENCE users_num_seq;


CREATE TABLE users (
	users_num 	number(5) 	 CONSTRAINT users_pk_users_num PRIMARY KEY,
	name 		VARCHAR2(20) CONSTRAINT users_nn_name NOT NULL, 
	id 			VARCHAR2(20) CONSTRAINT users_nn_id NOT NULL,
  	nickname 	VARCHAR2(20) CONSTRAINT users_nn_nickname NOT NULL,
	pw 			VARCHAR2(20) CONSTRAINT users_nn_pw NOT NULL, 
	email 		VARCHAR2(40) CONSTRAINT users_nn_email NOT NULL,
  	time DATE)
  PCTFREE 35 PCTUSED 55
  TABLESPACE roadwith
  STORAGE (INITIAL 4M
            NEXT 4M
            PCTINCREASE 20
);

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';



CREATE SEQUENCE users_num_seq
	START WITH 1
	INCREMENT BY 1
	NOMAXVALUE
	NOCACHE
	NOCYCLE;

 
insert into users values
(users_num_seq.NEXTVAL -1,
  '수지',
  'sujijjang',
  '수미칩',
  'aa11suji',
  'suji@naver.com',
  SYSDATE
  );
  
insert into users values
(users_num_seq.NEXTVAL -1,
  '아이유',
  'iujjang',
  '필쑥',
  'bb22iujjang',
  'iu@hanmail.net',
  SYSDATE
  );

insert into users values
(users_num_seq.NEXTVAL -1,
  '태연',
  'taeyeonjjang',
  '탱구',
  'cc33taeyeon',
  'taeyeon@gmail.com',
  SYSDATE
  );
  
insert into users values
(users_num_seq.NEXTVAL -1,
  '민아',
  'minajjang',
  '빵민아',
  'dd44mina',
  'mina@naver.com',
  SYSDATE
  );
  
insert into users values
(users_num_seq.NEXTVAL -1,
  '유이',
  'uejjang',
  '꿀벅지',
  'ee55uejjang',
  'ue@hanmail.net',
  SYSDATE
  );
  
  
  COMMIT
  
  DESC users
  select * from users;



/*-------------------러너 페이지-------------------------------*/
drop table run_index CASCADE CONSTRAINTS; 
drop SEQUENCE run_idx_num_seq;

  
CREATE TABLE run_index (
	run_idx_num number(5),
  	users_num 		number(5),
  	uploader_name 	VARCHAR2(40),
  	title 			VARCHAR2(100) CONSTRAINT run_index_nn_title NOT NULL,
  	text 			VARCHAR2(1000) CONSTRAINT run_index_nn_text NOT NULL,
	start_spot		VARCHAR2(20) CONSTRAINT run_index_nn_sp NOT NULL,
	finish_spot 	VARCHAR2(20) CONSTRAINT run_index_nn_fs NOT NULL,
  	start_time 		VARCHAR2(40) CONSTRAINT run_index_nn_st NOT NULL
)
  PCTFREE 45 PCTUSED 45
  TABLESPACE roadwith
  STORAGE (INITIAL 7M
            NEXT 7M
            PCTINCREASE 10
  );

ALTER TABLE run_index
    ADD(time date);
    
ALTER TABLE run_index
	ADD CONSTRAINT run_index_PK_run_idx_num
		PRIMARY KEY (
			run_idx_num
		);

ALTER TABLE run_index
  ADD CONSTRAINT run_index_FK_users_num
    FOREIGN KEY (users_num) REFERENCES users;


CREATE SEQUENCE run_idx_num_seq
	START WITH 1
	INCREMENT BY 1
	NOMAXVALUE
	NOCACHE
	NOCYCLE;

insert into run_index values
  (run_idx_num_seq.NEXTVAL -1,
    1,
    '임진강 코스.jpg',
    '임진강 종주 하실분 모집합니다!!',
    '임진강 달리실분 연락주세요',
    '일산IC',
    '통일전망대',
    'pm 01:00',
    SYSDATE
  );
  
insert into run_index values
  (run_idx_num_seq.NEXTVAL -1,
    2,
    '지리산 코스.jpg',
    '지리산 둘레길 뛰실분 모집합니다!!',
    '지리산 둘레길 도실분 연락주세요',
    '동강',
    '수철마을',
    'pm 02:00',
    SYSDATE
  );
  
insert into run_index values
  (run_idx_num_seq.NEXTVAL -1,
    3,
    '호수공원 코스.jpg',
    '호수공원 한바퀴???ㅋ',
    '호수공원으로 모이세요',
    '미관광장',
    '미관광장',
    'pm 06:00',
    SYSDATE
  );

COMMIT


DESC run_index
select * from run_index;

/*-------------라이더 페이지--------------*/

drop table rider_index CASCADE CONSTRAINTS; 
drop SEQUENCE rider_idx_num_seq;
  
CREATE TABLE rider_index (
  rider_idx_num 	number(5),
  users_num 		number(5),
  uploader_name		VARCHAR2(40),
  title 			VARCHAR2(100) CONSTRAINT rider_index_nn_title NOT NULL,
  text 				VARCHAR2(1000) CONSTRAINT rider_index_nn_text NOT NULL,
  start_spot 		VARCHAR2(20) CONSTRAINT rider_index_nn_sp NOT NULL,
  finish_spot 		VARCHAR2(20) CONSTRAINT rider_index_nn_fs NOT NULL,
  start_time 		VARCHAR2(40) CONSTRAINT rider_index_nn_st NOT NULL,
  time				DATE)
  PCTFREE 45 PCTUSED 45
  TABLESPACE roadwith
  STORAGE (INITIAL 7M
            NEXT 7M
            PCTINCREASE 10
  );

ALTER TABLE rider_index
	ADD CONSTRAINT rider_index_PK_rider_idx_num
		PRIMARY KEY (
			rider_idx_num
		);

ALTER TABLE rider_index
  ADD CONSTRAINT rider_index_FK_users_num
    FOREIGN KEY (users_num) REFERENCES users;


CREATE SEQUENCE rider_idx_num_seq
	START WITH 1
	INCREMENT BY 1
	NOMAXVALUE
	NOCACHE
	NOCYCLE;

insert into rider_index values
  (rider_idx_num_seq.NEXTVAL -1,
    1,
    '청계천 코스.jpg',
    '살곶이공원에서 청계천 따라가는 길',
    '살곶이공원에서 북쪽으로 올라가는 길이 상쾌하고 기분좋은 자전거 전용도로라면 
    청계천 방향으로 난 길은 아기자기한 맛이 있는 코스 입니다. 청계천 도로변에는 
    가게가 많아 먹을거리 걱정은 전혀 없습니다. 반면에 공중화장실이 없어 화장실을 
    가야할 때 불편하다는 단점이 있습니다.',
    '살곶이 공원',
    '청계천',
    '7월 25일 am 11:00',
    SYSDATE
  );
  
insert into rider_index values
  (rider_idx_num_seq.NEXTVAL -1,
    2,
    '행주산성 코스.jpg',
    '용산에서 한강 따라 행주산성까지',
    '용산의 이촌지구에서 행주산성으로 가는 강북 서쪽은 한강에서도 전원적인 느낌이 
    물씬한 곳입니다. 도심 부근의 강변 풍경은 다른 곳과 비슷하게 고층 아파트로 
    포위되어 단조롭기 짝이 없지만 성산대교, 가양대교를 지나 하류로 가면정경이 
    판이하게 바뀝니다. 애상이 깃든 갈대밭, 작은 백사장과 오솔길이 멀리 행주산성까지
    포근하게 펼쳐지는 코스죠.',
    '용산역',
    '행주산성',
    '6월 22일 pm 01:00',
    SYSDATE
  );
  
insert into rider_index values
  (rider_idx_num_seq.NEXTVAL -1,
    3,
    '잠실 ~ 양재천 코스.jpg',
    '잠실에서 양재천을 지나 과천 가는 길',
    '자전거 라이더에게 가장 사랑 받는 한강 둔치! 한강 둔치보다 더 조용하고 경치
    좋은 곳을 찾는다면 양재천을 추천합니다. 한강시민공원 잠실지구에서 여의도 
    방향으로 가다가 탄천에서 분당 방향으로 좌회전하면 나타나는 생태공원으로 습지,
    양재 시민의 숲을 지나 과천 경마공원까지 연결되는 코스입니다.',
    '잠실 야구장',
    '양재역',
    '3월 3일 am 10:00',
    SYSDATE
  );

COMMIT


DESC rider_index
select * from rider_index;
 
/*---------------------question 페이지 --------------------*/

drop table question CASCADE CONSTRAINTS; 
drop SEQUENCE que_idx_num_seq;

CREATE TABLE question (
  que_idx_num 	number(5) ,
  users_num 	number(5),
  title 		VARCHAR2(100) CONSTRAINT question_nn_title NOT NULL,
  text 			VARCHAR2(1000) CONSTRAINT question_nn_text NOT NULL,
  email 		VARCHAR2(40) CONSTRAINT question_nn_email NOT NULL,
  cellphone_num VARCHAR2(20) CONSTRAINT question_nn_cn NOT NULL,
  time 			DATE )
  PCTFREE 5 PCTUSED 85
  TABLESPACE roadwith
  STORAGE (INITIAL 3M
            NEXT 3M
            PCTINCREASE 10
  );
  
ALTER TABLE question
	ADD CONSTRAINT question_PK_que_idx_num
		PRIMARY KEY (
			que_idx_num
		);

ALTER TABLE question
  ADD CONSTRAINT question_FK_users_num
    FOREIGN KEY (users_num) REFERENCES users;

CREATE SEQUENCE que_idx_num_seq
	START WITH 1
	INCREMENT BY 1
	NOMAXVALUE
	NOCACHE
	NOCYCLE;

insert into question values
  (que_idx_num_seq.NEXTVAL -1,
    1,
    '러너 게시판이 안들어가져요~~',
    '러너 게시판이 안들어가져요 빠른 조치 부탁 드립니다.',
    'abc@naver.com',
    '010-9288-6134',
    SYSDATE
  );
  
  insert into question values
  (que_idx_num_seq.NEXTVAL -1,
    2,
    '라이더 게시판이 안들어가져요~~',
    '라이더 게시판이 안들어가져요 빠른 조치 부탁 드립니다.',
    'abc@naver.com',
    '010-9277-6124',
    SYSDATE
  );

insert into question values
  (que_idx_num_seq.NEXTVAL -1,
    3,
    '날씨 좀 공지해주세요',
    '날씨 참고해서 계획 짜게 날씨좀 게시해주세요!',
    'abcde@naver.com',
    '010-9266-5134',
    SYSDATE
  );

COMMIT

DESC question
select * from question;

/*-------------------answer 페이지 -----------------------*/

drop table answer CASCADE CONSTRAINTS; 
drop SEQUENCE ans_idx_num_seq;

CREATE TABLE answer (
  ans_idx_num 	number(5),
  que_idx_num 	number(5),
  title 		VARCHAR2(100) CONSTRAINT answer_nn_title NOT NULL,
  text 			VARCHAR2(1000) CONSTRAINT answer_nn_text NOT NULL,
  time 			DATE )
  PCTFREE 5 PCTUSED 85
  TABLESPACE roadwith
  STORAGE (INITIAL 3M
            NEXT 3M
            PCTINCREASE 10
  );

ALTER TABLE answer
	ADD CONSTRAINT answer_PK_ans_idx_num
		PRIMARY KEY (
			ans_idx_num
		);

ALTER TABLE answer
  ADD CONSTRAINT answer_FK_que_idx_num
    FOREIGN KEY (que_idx_num) REFERENCES question;



CREATE SEQUENCE ans_idx_num_seq
	START WITH 1
	INCREMENT BY 1
	NOMAXVALUE
	NOCACHE
	NOCYCLE;

insert into answer values
  (ans_idx_num_seq.NEXTVAL -1,
    1,
    '러너 게시판이 안들어가져요 답변드립니다',
    '처리 하였습니다.!',
    SYSDATE
  );

insert into answer values
  (ans_idx_num_seq.NEXTVAL -1,
    2,
    '라이더 게시판이 안들어가져요 답변드립니다.',
    '점검후에 이용하실수 있습니다.',
    SYSDATE
  );

insert into answer values
  (ans_idx_num_seq.NEXTVAL -1,
    3,
    '날씨 좀 공지해주세요 답변드립니다.',
    '추후 업데이트 예정입니다. 의견 감사드립니다.',
    SYSDATE
  );

COMMIT

DESC answer
select * from answer;



/*----------------------------------------------------------*/
  