create table riderArticle(
	articleId number not null,
	content VARCHAR2(200) not null,
	planDay VARCHAR2(13) not null,
	startTime VARCHAR2(5) not null,
	aimTime VARCHAR2(5) not null,
	entryMember number not null,
	startSpot VARCHAR2(100) not null,
	goalSpot VARCHAR2(100) not null,
	writer_id VARCHAR2(50) not null,	
	writer_nickName VARCHAR2(50) not null,
	posting_date timestamp not null
);

CREATE SEQUENCE seq_riderArticle_id
	START WITH 1
	INCREMENT BY 1
	NOMAXVALUE
	NOCACHE
	NOCYCLE;
	
select * from riderarticle;
--drop table riderarticle;
--drop sequence seq_riderArticle_id;
--purge recyclebin;