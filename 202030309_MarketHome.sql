use studies;

create table if not exists Market(
Id Int auto_increment,
Name varchar(20) not null,
Adress varchar(25) not null,
Phone varchar(13) not null unique ,
CountPlace Int not null,
TimeFrom datetime,
TimeTo datetime,
check (phone like '+375%'),
primary key(Id)
);
select*from market;
drop table market;
-- insert into Market(name,adress,phone,countplace,timefrom,timeto) values
-- ('Стас','Могилев, ул.Байкальская 45-54','+375249999999',4,  '2008-10-23 10:37:22',values(period_add(now,1))),
-- ('Дима','Витебск, ул.лежачая 7-54','+375256756655',7,'2008-10-23 10:37:22',values(period_add(now,1))),
-- ('Гена','Минск, ул.уручская 10-4','+375296567788',3, '2008-10-23 10:37:22',values(period_add(now,1)));
