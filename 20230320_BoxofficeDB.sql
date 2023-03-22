use cinema;

create table boxoffice(
id int primary key auto_increment,
movie_id int not null,
rating decimal(5,2) not null,
domestic_sales int not null,
international_sales int not null,
foreign key(movie_id) references movies(id)
);
-- drop table boxoffice;
insert into boxoffice(movie_id,rating,domestic_sales, international_sales)
values
(5, 8.2, 380843261, 555900000), (14, 7.4, 268492764, 475066843), (8, 8, 206445654,
417277164), (12, 6.4, 191452396, 368400000), (3, 7.9, 245852179, 239163000), (6, 8,
261441092, 370001000), (9, 8.5, 223808164, 297503696), (11, 8.4, 415004880, 648167031), (1,
8.3, 191796233, 170162503), (7, 7.2, 244082982, 217900167), (10, 8.3, 293004164, 438338580),
(4, 8.1, 289916256, 272900000), (2, 7.2, 162798565, 200600000), (13, 7.2, 237283207,
301700000);

-- select*from boxoffice;

select*from boxoffice
join movies
on movies.id=movie_id;

-- 20.Найдите domestic and international sales для каждого фильма 
select title,director,domestic_sales,international_sales from boxoffice
join movies
on movies.id=movie_id;

-- 21. Покажите цифры продаж для каждого фильма, где international sales больше чем
-- на domestic sales
select title, domestic_sales,international_sales from movies
inner join boxoffice
on movies.id=boxoffice.movie_id;


