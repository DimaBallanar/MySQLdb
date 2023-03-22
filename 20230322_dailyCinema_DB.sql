Create database cinema_db;
use cinema_db;

create table cinema(
id int primary key  auto_increment not null,
name varchar(30) not null,
adress varchar(40) not null,
count_place int not null
);

create table film(
id int primary key  auto_increment  not null,
name varchar(30) not null
);

create table seans(
id int primary key  auto_increment not null,
id_cinema int not null,
id_film int not null,
cost int not null
);

alter table seans add constraint FK_id_cinema foreign key (id_cinema) references cinema(id);
alter table seans add constraint FK_id_film foreign key (id_film) references film(id);

insert into cinema (name,adress, count_place) values ('avrora', 'пушкинская', 50),('october', 'kultyri', 50),('mockba', 'nemiga', 50);

insert into film(name) values ('avatar'),('monster'),('silent hill'),('enemy'),('prisoner');

insert into seans(id_cinema,id_film,cost) values
(1,1,3),
(1,2,6),
(1,3,7),
(1,4,2),
(1,5,5);
insert into seans(id_cinema,id_film,cost) values
(2,1,13),
(2,2,16),
(2,3,17),
(2,4,12),
(2,5,15);
insert into seans(id_cinema,id_film,cost) values
(3,1,32),
(3,2,62),
(3,3,73),
(3,4,24),
(3,5,55);

select f.*, c.*, s.cost from seans s
inner join cinema c
on c.id=s.id_cinema
inner join film f
on f.id=s.id_film;

select f.*, c.*, (c.count_place*s.cost) from seans s
inner join cinema c
on c.id=s.id_cinema
inner join film f
on f.id=s.id_film;

select f.name, sum(c.count_place*s.cost) from seans s
inner join cinema c
on c.id=s.id_cinema
inner join film f
on f.id=s.id_film
group by f.id ;

alter table seans add sold_seats int not null;

update seans set sold_seats=15-id where  id_cinema=2;
update seans set sold_seats=15-id where  id_cinema=1;
update seans set sold_seats=15-id where  id_cinema=3;

select f.name, sum(s.sold_seats*s.cost) выручка from seans s
inner join cinema c
on c.id=s.id_cinema
inner join film f
on f.id=s.id_film
group by f.id ;

