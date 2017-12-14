create table users(
   user_num number not null,
   user_name varchar2(20) not null,
   user_id varchar2(20) CONSTRAINT user_id_pk PRIMARY KEY,
   user_pw varchar2(20) not null,
   user_gender varchar2(10),
   user_email varchar2(20),
   user_address varchar2(20),
   user_contact varchar2(20),
   user_birthday varchar2(20),
   user_join_date date
);

select * from users
create sequence user_seq start with 1 increment by 1 nocache nocycle;
insert into users values(user_seq.nextval, '홍길동', 'lhs5', '1234', '남', 'email@naver.com', '경기도', 01043337508, 920926, sysdate)
drop sequence user_seq

drop table users
delete from users where user_id= 'lhs5';

create table board(
   user_id varchar2(20) CONSTRAINTS board_user_id_fk REFERENCES users(user_id) on delete cascade,
   board_num number constraint board_num_pk primary key,
   board_subject varchar2(50) not null,
   board_date date not null,
   board_readcount number,
   board_upload varchar2(500),
   board_content varchar2(300) not null,
   board_loc_code number not null,
   board_loc_city_code number not null,
   board_category varchar2(50) not null
);
select * from board
insert into board values('lhs5', board_seq.nextval, '다섯번째', sysdate, 1, null,'안녕하세요', 1, 1, '연애')
create sequence board_seq start with 1 increment by 1 nocache nocycle;
update board set board_subject='asdasd', board_content='asdasdasd', board_loc_city_code=1, board_loc_code=2, board_category='연애' where board_num=15
drop sequence board_seq
drop table board
select b.* from (select rownum as rm, a.* from 
			(select * from board where lower(board_content) like lower('%d%') order by board_date desc)
			a)b where b.rm between 1 and 9;

select count(*) from board where lower(user_id) like lower('%lh%')


create table board_re(
   user_id varchar2(20) CONSTRAINTS board_re_user_id_fk REFERENCES users(user_id) on delete cascade ,
   board_num number CONSTRAINTS board_re_board_num_fk REFERENCES board(board_num) on delete cascade,
   re_subject varchar2(50) not null,
   re_date date not null,
   re_readcount number,
   re_upload varchar2(500),
   re_content varchar2(300) not null
);

drop table board_re

create table reply(
   user_id varchar2(20) CONSTRAINTS reply_user_id_fk REFERENCES users(user_id) on delete cascade,
   board_num number CONSTRAINTS reply_board_num_fk REFERENCES board(board_num) on delete cascade,
   reply_num number constraint reply_num_pk primary key,
   reply_content varchar2(300) not null,
   reply_date date not null
);
select * from reply
drop table reply

create sequence reply_seq start with 1 increment by 1 nocache nocycle;

insert into users
 values(user_seq.nextval,'홍길동','홍길동','홍길동','남','g@g.com','서울', '010-8958-0333', '20170123', sysdate);


insert into board
 values('홍길동', board_seq.nextval,'제목4',sysdate,0,'sample.txt','내용 테스트.......',01);
