create table freeboard (
	article_id number not null,
	group_id number not null,
	sequence_no	char(16) not null,
	posting_date date not null,
	read_count number not null,
	writer_name varchar2(20) not null,
	password number not null,
	title varchar2(100) not null,
	content varchar2(1000) not null,
	constraint freeboard_id_pk primary key(article_id)
);

create sequence seq_freeboard_id
	start with 1
	increment by 1
	nocache
	nocycle;
	
<<<<<<< HEAD
create sequence seq_freeboard_readcount
	start with 1
	increment by 1
	nocache
	nocycle;
=======
>>>>>>> branch 'master' of https://github.com/rolendSunq/roadWith.git

--SELECT LAST_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'SEQ_FREEBOARD';

<<<<<<< HEAD
select * from freeboard;
<<<<<<< HEAD
DELETE FROM freeboard;
=======

>>>>>>> refs/remotes/origin/master
=======
select * from freeboard order by article_id desc;
>>>>>>> branch 'master' of https://github.com/rolendSunq/roadWith.git
