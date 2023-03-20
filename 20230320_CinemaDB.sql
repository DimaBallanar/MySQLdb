create database Cinema;
use cinema;

create table movies(
id INT primary key auto_increment,
title varchar(40) not null,
director varchar(40) not null,
year int not null,
length_minutes int not null
);

insert into movies(title, director, year, length_minutes) values
("История игрушек", "John Lasseter", 1995, 81), ("Жизнь жуков", "John Lasseter", 1998,
95), ("История игрушек 2", "John Lasseter", 1999, 93), ("Корпорация монстров", "Pete
Docter", 2001, 92), ("В поисках немо", "Andrew Stanton", 2003, 107), ("Суперсемейка",
"Brad Bird", 2004, 116), ("Тачки", "John Lasseter", 2006, 117), ("Рататуй", "Brad Bird", 2007,
115), ("ВАЛЛ-И", "Andrew Stanton", 2008, 104), ("Вверх", "Pete Docter", 2009, 101),
("История игрушек 3", "Lee Unkrich", 2010, 103), ("Тачки 2", "John Lasseter", 2011, 120),
("Храбрая сердцем", "Brenda Chapman", 2012, 102), ("Университет монстров", "Dan
Scanlon", 2013, 110);
select*from movies;

--  Вывести title каждого фильма с использованием псевдонимов
select title "название_фильма" from movies;


