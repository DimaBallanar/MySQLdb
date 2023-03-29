create database if not exists Market_db;
use market_db;

create table Users(
id int primary key auto_increment not null,
name varchar(20) not null,
password varchar(40) not null,
lastlogin date);


create table Products(
id int auto_increment,
name varchar(30) not null,
creator varchar(22) not null,
price double not null,
count int not null
);

create table Orders(
id int auto_increment not null,
user_id int not null,
adress varchar(50) not null,
dateorder  date not null
);

create table OrderProduct(
id int auto_increment,
product_id int,
countProduct int not null,
doscont double not null
);