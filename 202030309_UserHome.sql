use studies;

create table if not exists User(
Code Int auto_increment,
Name varchar(20) not null,
Password varchar(25) not null,
Email varchar(30) not null unique,
LastLogin datetime,
Money Double default 0,
primary key(code)
);
