create table center(id NUMBER, pw varchar2(100), title varchar2(100),
content varchar2(100), regDate TIMESTAMP, cate varchar2(100));

insert into center (id, pw, title, content, cate, regDate) values (1,'gg','gg','하하','first',sysdate);
insert into center (id, pw, title, content, cate, regDate) values (2,'ww','ww','으으','first',sysdate);
insert into center (id, pw, title, content, cate, regDate) values (3,'kk','kk','아이고','fnq',sysdate);
insert into center (id, pw, title, content, cate, regDate) values (4,'aa','aa','제기랄','qna',sysdate);
insert into center (id, pw, title, content, cate, regDate) values (5,'zz','zz','만세','fnq',sysdate);
insert into center (id, pw, title, content, cate, regDate) values (6,'xx','xx','얼쑤','qna',sysdate);

drop table gallery;

create table gallery (no number, name varchar2(100), cate varchar2(100));
insert into gallery (no, name, cate) values(1,'a.jpg','first');
insert into gallery (no, name, cate) values(2,'b.jpg','boy');
insert into gallery (no, name, cate) values(3,'c.jpg','boy');
insert into gallery (no, name, cate) values(4,'d.jpg','first');
insert into gallery (no, name, cate) values(5,'e.jpg','first');

select*from notice;
drop table notice;

create table notice ( id Number,pw varchar2(100), title varchar2(100), 
content varchar2(100), cate varchar2(100), reg_Date timestamp);

insert into notice (id, pw, title, content, cate, reg_date) 
values(1,'ggg','gegege','errqewqe','first',sysdate);