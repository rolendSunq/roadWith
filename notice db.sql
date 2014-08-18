create table notice (
	noticeId number not null;
	title VARCHAR2(100) not null;
	content VARCHAR2(2000) not null;
	posting_date timestamp not null
)


CREATE SEQUENCE seq_notice_id
	START WITH 1
	INCREMENT BY 1
	NOMAXVALUE
	NOCACHE
	NOCYCLE;