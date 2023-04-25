
create database SPRING;
use SPRING;

-- AUTO_INCREMENT: MYSQL, MARIADB의 방언
-- 오라클 시퀀스 기능 자동으로 첫번째 인서트데이터 1
-- 순차적으로 1씩 증가하는 데이터를 자동으로 삽입
create table PERSON (
	ID INT(10) AUTO_increment,
	PERSON_NAME VARCHAR(50) not null,
	PERSON_AGE	INT(3),
	constraint PK_PERSON_ID
	primary key (ID)
);

select * from person;


-- 학생 테이블 (성적 관리 프로그램)
create table STUDENT(
	STU_NUM INT(10) auto_increment,
	NAME VARCHAR(20) not null,
	KOR INT(3) not null,
	ENG INT(3) not null,
	MATH INT(3) not null,
	TOTAL INT(3) not null,
	AVERAGE FLOAT(5, 2) not null,
	GRADE VARCHAR(1) not null,
	constraint PK_STU_NUM
	primary key (STU_NUM)

);

select * from STUDENT;





