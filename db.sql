create table users (
	idx number(6) constraint users_idx_pk primary key,
	id varchar2(20) not null,
	name varchar2(10) not null,
	email varchar2(30) not null,
	password varchar2(20) not null
);

create sequence seq_users
	start with 1
	increment by 1
	maxvalue 999999
	nocache
	nocycle;
	
insert into users values(seq_users.nextval, 'suji1234', '권수지', 'missasuji@hanmail.net', 'sujimissa12345');
insert into users values(seq_users.nextval, 'suji1235', '강수지', 'missbsuji@hanmail.net', 'sujimissb12345');
insert into users values(seq_users.nextval, 'suji1236', '나수지', 'misscsuji@hanmail.net', 'sujimissc12346');
insert into users values(seq_users.nextval, 'suji1237', '남수지', 'missdsuji@hanmail.net', 'sujimissd12347');
insert into users values(seq_users.nextval, 'suji1238', '이수지', 'missesuji@hanmail.net', 'sujimisse12348');

select * from users;

commit

SELECT count(*) FROM USERS WHERE ID = 'suji1234';