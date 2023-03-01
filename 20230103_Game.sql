Create database if not exists Game;
use game;

create table Users(
Id int primary key auto_increment,
Name VARCHAR(20) NOT NULL,
Email VARCHAR(40) NOT NULL,
Password VARCHAR(255) NOT NULL,
Status INT NOT NULL
);

insert into users(name,email,password,status) values
		('Dima', 'D.Ballanar@gmail.com', '123123qwqq', 5),
        ('Martha', 'Martha@gmail.com', '1231231421', 4), 
		('Konstantin', 'Konstantin@gmail.com', 'ggt20', 3),
		('Kirill', 'Kirill@gmail.com', '[qwe21', 4), 
		('Yana', 'Yana@gmail.com', 'qweqwe22', 5);        
        select*from users;
        
        