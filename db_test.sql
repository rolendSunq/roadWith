create table riderBoard (
	seq number not null,
	writer varchar2(20) not null,
	subject varchar2(100) not null,
	content varchar2(4000) not null,
	logtime date not null,
	constraint riderBoard_seq_pk primary key(seq)
);

create sequence seq_riderboard
	start with 1
	increment by 1
	nocache
	nocycle;
	
