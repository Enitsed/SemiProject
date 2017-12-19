create table users(
   user_num number not null,
   user_name varchar2(20) not null,
   user_id varchar2(20) CONSTRAINT user_id_pk PRIMARY KEY,
   user_pw varchar2(20) not null,
   user_gender varchar2(10),
   user_email varchar2(20),
   user_address varchar2(30),
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
   board_loc_code varchar2(50) not null,
   board_loc_city_code varchar2(50) not null,
   board_category varchar2(50) not null
);
select * from board
select * from board where board_loc_code = '서울특별시'
SELECT b.* FROM( SELECT rownum rm, a.* FROM(SELECT * FROM board where board_loc_code='서울특별시' and board_loc_city_code='서대문구' order by board_date desc) a ) b WHERE b.rm >= 1 and b.rm < 5
insert into board values('lhs5', board_seq.nextval, '다섯번째', sysdate, 1, null,'안녕하세요', 1, 1, '연애')
create sequence board_seq start with 1 increment by 1 nocache nocycle;
update board set board_subject='asdasd', board_content='asdasdasd', board_loc_city_code=1, board_loc_code=2, board_category='연애' where board_num=15
drop sequence board_seq
drop table board
select b.* from (select rownum as rm, a.* from 
			(select * from board where lower(board_content) like lower('%d%') order by board_date desc)
			a)b where b.rm between 1 and 9;

select count(*) from board where lower(user_id) like lower('%lh%')
delete from board where board_num = 1;
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


select b.* from (select rownum as rm, a.* from (select * from board where board_loc_city_code ='의정부시' or board_loc_city_code ='양주시' order by board_date desc)a)b where b.rm between 1 and 5
select count(*) from board where board_subject like lower('%dd%') or board_content like lower('%ad%') or user_id like lower('%ad%') or board_loc_city_code ='의정부시' or board_loc_city_code ='양주시' or board_loc_city_code ='포천시'
select b.* from (select rownum as rm, a.* from (select * from board order by board_date desc)a)b where b.rm between 1 and 5 and board_loc_city_code ='의정부시' or board_loc_city_code ='양주시' or board_loc_city_code ='포천시'


create sequence reply_seq start with 1 increment by 1 nocache nocycle;
drop sequence reply_seq
insert into users
 values(user_seq.nextval,'홍길동','홍길동','홍길동','남','g@g.com','서울', '010-8958-0333', '20170123', sysdate);


insert into board
 values('홍길동', board_seq.nextval,'제목4',sysdate,0,'sample.txt','내용 테스트.......',01);
