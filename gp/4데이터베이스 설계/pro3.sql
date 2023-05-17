show databases;
use sample;
show tables;
create database gp;
commit;

-- drop table user1;
-- drop table review;
-- drop table category;
-- drop table board;
-- drop table notice;
-- drop table qna;

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
addr varchar(2000),
email varchar(200), 
udate date default (current_date));

select * from user1;

-- 리뷰 review
create table review (
rnum varchar(10) primary key not null,
rtitle varchar(100),
rcontent varchar(500),
rauthor varchar(20),
rdate date default (current_date));

select * from review;

-- Q&A qna
create table qna (
qnum varchar(10) primary key not null,
qtitle varchar(100),
qcontent varchar(500),
qauthor varchar(20),
qdate date default (current_date));

select * from qna;

-- 공지사항 notice
create table notice (
nnum varchar(10) primary key not null,
ntitle varchar(100),
ncontent varchar(500),
nauthor varchar(20),
file1 varchar(100),
ndate date default (current_date));

select * from notice;

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
pic5 varchar(100));

select * from board;

-- 카테고리 category
create table category(
cate varchar(10) primary key not null,
catename varchar(100),
categroup varchar(50));

select * from category;

show tables;


commit;