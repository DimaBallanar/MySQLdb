create database if not exists HomeTable;

use HomeTable;
create table Taro(
Id INT auto_increment,
City varchar(20) Not null,
primary key(Id)
);

alter table HomeTable Add Name varchar(20) not null;
Alter table HomeTable Drop Column City;