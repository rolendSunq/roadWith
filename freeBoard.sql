drop table freeboard;

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
	
--select * from freeboard;

select * from (select * from FREEBOARD where group_id = '4')
where group_id <> article_id
order by posting_date asc;
	
--select * from freeboard
--where article_id = group_id
--order by posting_date desc;

