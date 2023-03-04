Create database Lesson0304;
use Lesson0304;

create table TestTable(
Field1 Int not null,
Field2 Double not null
);

insert into TestTable(Field1,Field2) value (4, 4.4);
insert into TestTable(Field1,Field2) value (5, 5.4);
insert into TestTable(Field1,Field2) value (6, 6.4);
insert into TestTable(Field1,Field2) value (7, 7.4);
insert into TestTable(Field1,Field2) value (11, 11.4);

select*from TestTable;

select Count(*) as 'count',
Sum(field1) as 'сумма поле1',
Min(field1) as 'минимум поля1',
Max(field1) as 'максимум поля1',
AVG(field1) as 'среднее поля1'
From TestTable;

select*from TestTable where field1>5;
Alter table TestTable add Field3 varchar(20);
truncate table Testtable;

insert into TestTable(Field1,Field2,Field3) value (4, 4.4, 'ATest');
insert into TestTable(Field1,Field2,field3) value (5, 5.4, 'aTest');
insert into TestTable(Field1,Field2,Field3) value (6, 6.4,'btest');
insert into TestTable(Field1,Field2,Field3) value (7, 7.4,'unicorn');
insert into TestTable(Field1,Field2,Field3) value (11, 11.4,'cmodify');

select*from TestTable where field3 like 'A%';
select*from TestTable where field3 like '%test';
select*from TestTable where field3 like '%o%' and field3 like '%f_';
select*from TestTable where field3 like '_test';



