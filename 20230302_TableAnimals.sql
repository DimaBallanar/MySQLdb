CREATE database if not exists studies;

 use studies;

 create table if not exists Animal(
 Id INT auto_increment not null,
 Name varchar(20) not null,
 Type varchar(20) not null,
 primary key(id)
 );

 rename table Animal to Animals;

 insert into animals(name,type) values ('кот', 'млекопитающее');
insert into animals(name,type) values ('собака', 'млекопитающее');
insert into animals(name,type) values ('кот', 'земноводное');
insert into animals(name,type) values ('змея', 'земноводное');
insert into animals(name,type) values ('корова', 'млекопитающее');
SELECT LAST_INSERT_ID();
select 'name','type' from animals;
select*from animals;
truncate table animals;
select*from animals where type='млекопитающее' and id between 1 and 4 ;
delete from animals where Id=2;
