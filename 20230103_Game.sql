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
        select*from users where email like'%@gmail.com';
        
        update users set email='kirill@yandex.ru' where name='kirill';
            select*from users where email like'%@gmail.com';
            
            delete from users where status=4;
            select*from users;
            
            insert into users(name,email,password,status) values ('robert','robert@mail.ru','prt4',2);
            select*from users;
        
        