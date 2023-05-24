show databases;
use sample;
show tables;
create database gp;
commit;

drop table user1;
drop table review;
drop table category;
drop table board;
drop table notice;
drop table qna;

drop table sample1;
use gp;
set AUTOCOMMIT=true;	-- 자동커밋 설정
show variables like 'autocommit';	-- 자동커밋 설정 확인
-- 테스트용 샘플 테이블 작성
create table sample1(item1 varchar(50) primary key, item2 int default 0, item3 datetime default (CURRENT_TIMESTAMP));
insert into sample1 values ('parkjihyeon', 90, default);
insert into sample1 values ('junjaeyoung', 60, default);
insert into sample1 values ('chotaejeong', 80, default);
select * from sample1;
-- commit;	-- 자동 커밋이 설정되어 있으므로 커밋하지 않아도 됨

-- 회원 user1
create table user1 (
id varchar(20) primary key not null,
pw varchar(100) not null,
name varchar(20),
tel varchar(13),
addr varchar(300),
email varchar(200), 
udate date default (current_date));

select * from user1;

insert into user1 values ('admin','1234','관리자','01012341234','고양시 일산동구','admin@naver.com',default);
insert into user1 values ('kim','1111','김아무','01011111111','고양시 덕양구','kim@daum.net',default);
-- update 테이블명 set 컬럼명=바꿀값 [where 조건절]
update user1 set pw='dpCjPYdsDWQj5YhZ+wIiWoTWHRrKG89AB/JV49TAiuy9Tpf3s3LcIV2LloGRai+hHK80vQ==' where id='admin'; 
update user1 set pw='I7v0iDKNsV/U5wjppAbocBhcFmgswoeTuVLZZvzfsAvalo6kNBVankhMjVcE0Xl6glVnkw==' where id='kim'; 
commit;

-- 리뷰 review
create table review (
rnum int primary key not null auto_increment,
rtitle varchar(100),
rcontent varchar(500),
rauthor varchar(20),
rdate date default (current_date));
drop table review;
select * from review;
commit;

-- Q&A qna
create table qna (
qnum int primary key not null auto_increment,
qtitle varchar(100),
qcontent varchar(500),
qauthor varchar(20),
qdate date default (current_date),
lev int,
parno varchar(8));
insert into qna values (default,'질문 있습니다.','내용입니다.','김아무',default,1,'1');
delete from qna where lev=2;
drop table qna;
select * from qna;
commit;

create table qna(
    no int primary key auto_increment,
    title varchar(100) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    regdate datetime default current_timestamp,
    lev int default 0,            -- 깊이
    parno INT,          			-- 부모글 번호
    sec char(1),                 -- 비밀글 여부
    visited INT DEFAULT 0
);
commit;

-- 공지사항 notice
create table notice (
nnum int primary key not null auto_increment,
ntitle varchar(100),
ncontent varchar(500),
nauthor varchar(20),
file1 varchar(100),
ndate timestamp default current_timestamp);
insert into notice values (default,'더미 제목1','더미1에 대한 내용입니다.','관리자','main3.py',default);
delete from notice where nnum=1;
delete from notice where nnum=3;
select * from notice;
commit;

-- 게시판 board
create table board (
bnum varchar(10) primary key not null,
btitle varchar(100),
bcontent varchar(500),
bauthor varchar(20),
bdate date default (current_date),
pic1 varchar(100),
pic2 varchar(100),
pic3 varchar(100),
pic4 varchar(100),
pic5 varchar(100),
cate varchar(10));

select * from board;

-- 카테고리 category
create table category(
cate varchar(10) primary key not null,
catename varchar(100),
categroup varchar(50));

select * from category;

show tables;

commit;