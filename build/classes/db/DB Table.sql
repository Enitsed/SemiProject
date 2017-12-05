create table users(
	user_num number not null,
	user_name varchar2(20) not null,
	user_id varchar2(20) CONSTRAINT user_id_pk PRIMARY KEY,
	user_pw varchar2(20) not null,
	user_gender varchar2(10),
	user_email varchar2(20),
	user_address varchar2(20),
	user_contact number,
	user_birthday number
);

create sequence user_seq start with 1 increment by 1 nocache nocycle;

drop sequence user_seq

create table board(
	user_id varchar2(20) CONSTRAINTS board_user_id_fk REFERENCES users(user_id),
	board_num varchar2(20) constraint board_num_pk primary key,
	board_subject varchar2(50) not null,
	board_date date not null,
	board_readcount number,
	board_upload varchar2(500),
	board_content varchar2(300) not null,
	board_loc_code number not null
);

create sequence board_seq start with 1 increment by 1 nocache nocycle;

drop sequence board_seq

create table board_re(
	user_id varchar2(20) CONSTRAINTS board_re_user_id_fk REFERENCES users(user_id),
	board_num varchar2(20) CONSTRAINTS board_re_board_num_fk REFERENCES board(board_num),
	re_subject varchar2(50) not null,
	re_date date not null,
	re_readcount number,
	re_upload varchar2(500),
	re_content varchar2(300) not null
);

create table reply(
	user_id varchar2(20) CONSTRAINTS reply_user_id_fk REFERENCES users(user_id),
	board_num varchar2(20) CONSTRAINTS reply_board_num_fk REFERENCES board(board_num),
	reply_content varchar2(300) not null,
	reply_date date not null
);


insert into users
 values(user_seq.nextval,'홍길동','홍길동','홍길동','남','g@g.com','서울', 01089580333, 0123);


insert into board
 values('홍길동', board_seq.nextval,'제목4',sysdate,0,'sample.txt','내용 테스트.......',01);

