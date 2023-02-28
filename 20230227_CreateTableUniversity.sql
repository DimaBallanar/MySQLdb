create database if not exists university;

use university;
create table students(
	Id int not null primary key auto_increment,
	Name varchar(20) not null,
	Surname varchar(40) not null,
    Age int not null ,
    Course int not null default 1
    );
    alter table students add Phone VARCHAR(13) NOT NULL UNIQUE;
    alter table students add  check(length(phone)=13);
    alter table students add  check(phone like '+375%');
    alter table students drop constraint students_chk_2;
    insert into students(name,surname,age,course,phone) values
		('Maria', 'Grant', 22, 5, '+375291111111'),
        ('Martha', 'Mausoleum', 21, 4, '+375291111122'), 
		('Konstantin', 'Konstantinov', 20, 3, '+375291231361'),
		('Kirill', 'Anisimov', 21, 4, '+375291181111'), 
		('Yana', 'Zolotova', 22, 5, '+375291149011');        
        select*from students;
insert into students (name,surname,age,course,phone) values ('Test', 'Zolotova', 22, 5, '+375291149111'); 

-- truncate table students;
select  name as имя,surname as фамилия, phone as телефон from students;
select distinct surname as фамилия from students;
update students set course=course+1, Name='Katya' where id=1;
delete from students where id=1;
select distinct course as курс from students;


    