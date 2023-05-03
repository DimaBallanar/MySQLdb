
use university;
create table if not exists users(
id int primary key auto_increment,
name varchar(20) not null,
surname varchar(20) not null,
email varchar(40) unique,
password varchar(30)
);
drop table users;
insert into users(name,surname,email,password) values
('Дмитрий', 'Редис','Dmitry@gmail.com','123qwe'),
('Виктор', 'Тыковка','Viktor@gmail.com','123qwe'),
('Артемий', 'Виноград','Artem@gmail.com','123qwe');
select*from studaki;

-- product(id, name, siscription,price, category_id,bran_id)
-- category(id,name)
-- brand (id, name)
-- order(id,user_id,product_id, date_book, count, discont(nullable type)

create table Product(
ID int auto_increment primary key,
Name varchar(20) not null,
Description varchar(255) not null,
Price Decimal not null,
brand_id int not null,
category_id int not null
);

insert into Product(name,description,price,brand_id,category_id) values
('телефон','кнопочный',100,1,1), ('монитор','жк',100,2,2), ('телефон','кнопочный',100,3,1);
drop table Product;
create table Brand(
ID int auto_increment primary key,
Name varchar(20) not null

);
insert into Brand(name) values ('Apple'),('Samsung'),('Honor'),('Alcatel');
drop table Brand;
create table Category(
ID int auto_increment primary key,
Name varchar(20) not null
);

insert into Category(name) values ('mobile'),('notebook'),('car'),('motocycle');
drop table Category;

create table OrderProduct(
ID int auto_increment primary key,
user_id int not null,
product_id int not null,
date_book datetime,
count int not null,
discount int null
);
drop table Order_product;

Alter table Product  add constraint FK_category_product foreign key (category_id) references category(id);
Alter table Product  add foreign key (brand_id) references brand(id);

Alter table OrderProduct  add foreign key (user_id) references studaki(id);
Alter table OrderProduct  add foreign key (product_id) references product(id);
Alter table OrderProduct  add foreign key (user_id) references studaki(id);

select*from brand;
select*from category;
select*from orderproduct;
select*from product;
select*from users;






