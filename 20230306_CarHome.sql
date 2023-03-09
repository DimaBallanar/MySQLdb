use studies;
create table if not exists Car(
Code Int auto_increment,
Name varchar(20) not null,
Color varchar(25) not null,
DateCreate datetime,
Type varchar(20) not null,
Mileage Double default 0.00,
primary key(code)
);

insert into car(Code,name,color,datecreate,type,mileage)
values
(1,'bmw', '#FFC0CB', '2008-10-23 10:37:22', 'sedan', 10.0),
(2,'audi', '#FF00FF', '2008-10-23 10:37:22', 'sedan', 20.0),
(3,'mercedes', '#32CD32', '2008-10-23 10:37:22', 'sedan', 87.0);
select*from car;
truncate table car;
drop table car;