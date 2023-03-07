Create database if not exists University;
use University;

create table  students(
Id int auto_increment,
Name varchar(20) not null,
Surname varchar(30) not null,
age int default 17,
Email varchar(30) unique,
primary key(Id)
);
alter table students add AvGrade decimal(5,2);

insert into students(Name,Surname,age,Email,avgrade) values
('Анна', 'Петрова', 20, 'anna@mail.ru', 10.0), 
('Дарья', 'Платонова', 18, 'dasha@mail.ru',9.1),
('Николай', 'Николаев', 19, 'kolya@mail.ru', 7.9),
('Авсгустна', 'Сентябрьская', 20,'avg@mail.ru', 6.0),
 ('Есения', 'Грант', 18, 'yesgrant@mail.ru', 8.1);
select*from students;
truncate table students;
select Count(*) from students;

alter table students add groupInt int;

update students set groupInt=810101 where id between 1 and 3;
update students set groupInt=810102 where id between 4 and 5;

select count(groupInt) as "кол-во чел в группе" from students group by groupInt;

select groupInt, Round(AVG(avgrade),1) from students group by groupInt order by Round(AVG(avgrade),1);
select groupInt, avgrade from students group by groupInt having avgrade>8; 
select groupInt, Round(AVG(avgrade),1) from students group by groupInt  having Round(AVG(avgrade),1)>8 order by Round(AVG(avgrade),1) ;
select name,surname from students where surname like 'П%';
select groupint  'группа', max(avgrade)  'максимальная оценка' from students group by groupInt;
update students set groupInt=910101 where groupInt=810101;
-- Найдите максимальную и минимальную оценки среди всех учащихся, округлите их и возведите в проценты
select floor(max(avgrade)*10) 'максимальная оценка', floor(min(avgrade)*10) 'минимальная оценка' from students ;

select name 'Имя', surname 'Фамилия' from students where age between 19 and 21 and name like 'А%' order by surname;

insert into students (Name,Surname,age,Email,avgrade) values
('Анна', 'Петрова', 20, 'annaSt@mail.ru', 8.0);


select distinct surname from students;

select surname 'фамилия', count(*) 'однофамильцев' from students group by surname;

-- Найдите минимальный и максимальный возраст на каждом из курсов. В
-- итоговый вариант группировки должны входить только те студенты, возраст
-- которых > 19
select  groupint, max(age) 'максимальный возраст',min(age) 'минимальный возраст' from students group by groupint having min(age)>19 ;
delete from students where id=3;
truncate table students;
drop database university;






