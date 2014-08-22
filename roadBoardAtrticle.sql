create table riderArticle(
	article_id number CONSTRAINT pk_riderArticle_id primary key not null,
	article_hit number,
	reply_hit number,
	content VARCHAR2(200) not null,
	plan_day VARCHAR2(13) not null,
	start_time VARCHAR2(5) not null,
	aim_time VARCHAR2(5) not null,
	entry_member number,
	start_spot VARCHAR2(100) not null,
	goal_spot VARCHAR2(100) not null,
	writer_id VARCHAR2(50) not null,	
	writer_nickName VARCHAR2(50) not null,
	posting_date timestamp not null
);

create table rider_join_members(
	article_id number not null,
	join_member_id varchar(20) null,
	constraint fk_members_id foreign key(article_id) references riderArticle(article_id)
);

CREATE SEQUENCE seq_riderArticle_id
	START WITH 1
	INCREMENT BY 1
	NOMAXVALUE
	NOCACHE
	NOCYCLE;
	
select * from riderarticle;
select * from RIDER_JOIN_MEMBERS;
--drop table riderarticle cascade constraints;
--drop table rider_join_members
--drop sequence seq_riderArticle_id;
--purge recyclebin;
