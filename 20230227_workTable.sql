create database if not exists Hschool;

use hschool;

create table students (
studentName varchar(20),
studentGroup int
);

insert into students (studentName, studentGroup) values ('Hanna', 3),('Dima', 3),('Artyom', 3),('Vitek', 3);
insert into students (studentName, studentGroup) values ('Stas', 1),('Decl', 2);
-- select StudentGroup,studentName from students;
select * from students where studentGroup in (2,3);
 
drop table students;

create table students (
name varchar(20),
surname varchar(40),
age int,
`group` int,
phone varchar(13)
);
insert into students (name,surname,age,`group`,phone)
values
('maria', 'Grant', 22, 5, '+375251111111'),
('Martha', 'Mausoleum', 21, 4, '+375251111211'),
('Konstantin', 'Konstantinov', 20, 3, '+375251111331'),
('Kirill', 'Anisimov', 21, 4, '+375251119991'),
('Yana', 'Zolotova', 22, 5, '+375251117111');

select name as имя, surname as фамилия, groupId as номер_группы from students;
select*from students;
alter table students rename column `group` to groupId;
alter table students modify column groupId int not null;
select distinct groupId as имя from students;

update students set Name='stas' where Groupid=1;

