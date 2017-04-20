create database test;

use test;

-- create student(
--
--
--
-- )

select * from student;

create unique index studentIndex
on student (Sno);

DROP INDEX studentIndex on student;

select Sage from student
where Sage > 25;

select Sage from student
where Sage > 25 and Sage < 30
order by Sage desc;

select Sage from student
where Sage not between 30 and 39;

select Sname as name from student;

create table People(
	pno char(20),
	pname char(40)
);

insert into People values('11111', 'Lida');  
insert into People values('10101010101', 'Lida');

select student.sname, People.pname
	from student, People
	where student.sname = People.pname;

select sname, Sno from student
union
select pname,pno from people;

select sname, Sno from student
union all
select pname,pno from people;

create table student_copy(name char(50));

alter table student_copy 
	add age varchar(20);

alter table student_copy 
	modify age int(3);

update student_copy
	set age=200;

alter table student_copy
	modify name nchar(50);

insert into student_copy values('备忘');

select * from student_copy;

select distinct * from student_copy;

-- default
alter table student_copy
	add sex char(10) default 'man';

select * from student_copy;

-- must exists primary key ： 即唯一不重复
create table asd(
	id int(20) not null primary key  AUTO_INCREMENT,
	name char(30)
);

insert into asd (name) values('dog');
insert into asd (name) values('cat');
insert into asd (name) values('mouse');

select distinct * from asd;


CREATE VIEW studentview AS
SELECT Sname
FROM student;

SELECT * FROM studentview



