create table riderAticle(
	articleId number not null,
	content VARCHAR2(200) not null,
	planDay timestamp not null,
	startTime timestamp not null,
	aimTime timestamp not null,
	entryMemver number not null,
	startSpot VARCHAR2(100) not null,
	goalSpot VARCHAR2(100) not null,
	writer_id VARCHAR2(50) not null,	
	writer_nickName VARCHAR2(50) not null	
);

CREATE SEQUENCE seq_articleId
	START WITH 1
	INCREMENT BY 1
	NOMAXVALUE
	NOCACHE
	NOCYCLE;