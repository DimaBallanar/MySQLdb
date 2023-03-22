create database company;
use company;

create table worker(
id int primary key auto_increment,
name varchar(40) not null,
lastname varchar(40) not null,
email varchar(40) not null,
age int not null);

create table salary(
id INT Primary key auto_INCREMENT not null,
Worker_id  int NOT NULL,
Month_id INT  NOT NULL,
Salary INT NOT NULL);

-- alter table salary modify column worker_id int not null;

create table month(
id int primary key auto_increment,
title varchar(20) not null);

alter table salary add constraint FK_worker_salary foreign key(worker_id) references worker(id);
alter table salary add constraint FK_month_salary foreign key(month_id) references month(id);

insert into month(title) values
('Январь'),('Февраль'),('Март'),('Апрель'),('Май'),('Июнь'), ('Июль'), ('Авгус'), ('Сентябрь'),
('Октябрь'), ('Ноябрь'), ('Декабрь');

insert into worker(name,lastname,email,age) values
('Есения', 'Грант', 'yes@mail.ru', 21), ('Анастасия', 'Павлова', 'test@mail.ru', 21),('Мария',
'Гардон', 'qqq@mail.ru', 21), ('Марта', 'Котикова', 'eee@mail.ru', 28),('Борис', 'Юревич',
'zzz@mail.ru', 21), ('Рыжик', 'Рыжий', 'eeezzz@mail.ru', 31), ('Рейна', 'Собачкова',
'test2@mail.ru', 28), ('Максим', 'Николаев', 'hanna@mail.ru', 21),('Дарья', 'Плешко',
'dasha@mail.ru', 17),('Константин', 'Константинов', 'konst@mail.ru', 31),('Иван',
'Иванов', 'iv@mail.ru', 31),('Николай', 'Николаев', 'nik@mail.ru', 24);

insert into salary(Worker_id, Month_id,salary) values

(1, 1, 500), (1, 2, 600), (1, 3, 5600), (1, 4, 5100), (1, 5, 5400), (2, 1, 500), (2, 2, 5700), (2, 3, 500), (3,
1, 1500), (4, 1, 5200), (5, 6, 3500), (5, 7, 4500), (6, 4, 570), (7, 9, 5107), (8, 10, 6700);


-- Выведите из таблицы worker записи с id равным 3-5, 6, 10

select*from worker where id in(3,4,5,6,10);

-- 3. Выведите из таблицы worker записи с id равным 3, 5, 6, 10 и почтой, начинающейся
-- с 'eee', 'zzz' или 'ggg
select*from worker where id in(3,5,6,10) and (email like 'eee%' or email like 'zzz%' or email like 'ggg%');

select name,salary from worker inner join salary on salary.worker_id=worker.id;

-- 5. Выберите неповторяющиеся зарплаты
select distinct salary from salary;

-- 6. Выведите тех сотрудников, зарплаты которых > 1000
select*from worker inner join salary on salary.worker_id=worker.id where salary.salary>1000;
