create database Cinema;
use cinema;

create table movies(
id INT primary key auto_increment,
title varchar(40) not null,
director varchar(40) not null,
year int not null,
length_minutes int not null
);