
use spring;
select * from person;


create table tbl_board (
	board_no int(10) auto_increment primary key,
	title VARCHAR(80) not null,
	content VARCHAR(2000),
	view_count int(10) default 0,
	reg_date_time DATETIME default current_timestamp
);

select * from tbl_board;
set view_count = view_count + 1
where board_no = 2;



select *
from tbl_board
order by board_no desc
limit 0, 10
;

create table tbl_reply (
    reply_no INT(10) auto_increment,
    reply_text VARCHAR(1000) not null,
    reply_writer VARCHAR(100) not null,
    reply_date DATETIME default current_timestamp,
    board_no INT(10),
    constraint pk_reply primary key (reply_no),
    constraint fk_reply
    foreign key (board_no)
    references tbl_board (board_no)
    on delete cascade
);

drop table tbl_reply;

truncate table tbl_board;

select * from tbl_board;
select * from tbl_reply
where board_no = 1;

select count(*)
from tbl_reply
where board_no = 2
;












