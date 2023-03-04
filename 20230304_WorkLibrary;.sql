Create database if not exists Library;
use Library;

Create table if not exists test(
Id Int auto_increment,
Title varchar(50) not null,
Author varchar(50) not null,
Price decimal(8,2) not null,
primary key(Id)
);

rename table test to book;
alter table book add Amount int not null;

insert into book(Title,Author,price,amount) values
('Мастер и Маргарита', 'Булгаков М. А.', 67.99, 3),
 ('Белая гвардия', 'Булгаков М. А.', 54.50, 5),
 ('Идиот', 'Достоевский Ф. М.', 46.00, 10),
 ('Братья Карамазовы', 'Достоевский Ф. М.', 79.99, 2),
 ('Стихотворения и поэмы', 'Есенин С. А.', 65.99, 15);
 
 select*from book;
 truncate table book;
 
 select Title as "книги" from book ;
  select Title from book ;
 
 select Author as "автор", Title as "название книги", price as "цена" from book;
 select count(*) as "количество книг" from book;
 select Min(price) as "минимальная цена" from book;
 select Max(price) as "максимальная цена" from book;
 select*from book order by id desc limit 1;
 select*from book where price between 50 and 60 order by price limit 3;
 
 
 
