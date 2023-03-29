use hschool;

create table seans(
id int primary key  auto_increment not null,
id_cinema int not null,
id_film int not null,
cost int not null
);

insert  into seans(id_cinema,id_film,cost) 
select id_cinema,id_film,cost from seans;

select*from seans;