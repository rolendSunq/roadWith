drop table freeboard;
drop SEQUENCE seq_freeboard_id;

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
	NOMAXVALUE
	NOCACHE
	NOCYCLE;
	
--select * from freeboard;

select * from (select * from FREEBOARD where group_id = '4')
where group_id <> article_id
order by posting_date asc;
	
--select * from freeboard
--where article_id = group_id
--order by posting_date desc;
SELECT article_id , group_id , sequence_no , posting_date, read_count, writer_name , password , title
FROM FREEBOARD
WHERE article_id = group_id;

SELECT * FROM (
SELECT A.*, 
ROWNUM AS RNUM,
COUNT(*) OVER() AS TOTCNT FROM (
	SELECT * FROM FREEBOARD where article_id = group_id
) A
) WHERE RNUM >= 1 AND RNUM <= 10
order by posting_date desc;