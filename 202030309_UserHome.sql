use studies;

create table if not exists User(
Id Int auto_increment,
Name varchar(20) not null,
Password varchar(25) not null,
Email varchar(30) not null unique,
LastLogin datetime not null,
Money Double default 0,
primary key(Id)
);
select*from user;
drop table user;
insert into User(name,password,email,lastlogin,money) values
('Стас','12312s11','superstas@gmail.com', now(), 32),
('Дима','12312s11','Dima@gmail.com', now(), 68),
('Гена','12312s11','gennadiy@gmail.com', now(), 392);


