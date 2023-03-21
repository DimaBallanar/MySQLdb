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

-- 4. Вывести title and director каждого фильма
select title название_фильма, director режиссер from movies;

-- 5. Вывести title and year каждого фильма, где title содержит подстроку “сто”
select title название_фильмеца, director режиссер from movies
where title like "%сто%";

-- Вывести всю информацию о каждом фильме
select title название, director режиссер, year год_выхода, length_minutes длительность_фильма from movies;

-- 7. Выведите количество фильмов выпущенных в каждом году
select year, count(title) from movies 
group by year;

-- Найдите фильмы, не выпущенные в период year с 2000 по 2010 год
select title, director, year from movies 
where year not between 2000 and 2010;

-- 9. Найдите первые 5 фильмов и их выпуск year
select title, director, year, length_minutes from movies
limit 5;

-- 10. Найти среднее время фильмов у каждого рефиссера
select director, avg(length_minutes) from movies
group by director;

-- 11. Найти все фильмы режиссера начинающегося на “Джон”
select title, director from movies
where director like 'John%';

-- 12. Найти 3 первых фильма начинающиеся на “В” в отсортированном порядке
select title from movies
where title like 'В%' limit 3;

-- Отобразите общее количество всех фильмов существующих в БД, а также
-- максимальный и минимальный по длительности фильм

select count(title), min(length_minutes), max(length_minutes) from movies;

-- 14. Перечислите список всех режиссеров фильмов (в алфавитном порядке) без
-- дубликатов 
select distinct(director) from movies
order by director asc;

-- 15. Перечислите всех режиссеров, выпустивших минимум 2 фильма
select director from movies
group by director
having count(title)>1;

-- 16. Перечислите первые пять фильмов в алфавитном порядке. Учитывать фильмы
-- только с 2000 года

select* from movies
where year>2000
order by director asc;


