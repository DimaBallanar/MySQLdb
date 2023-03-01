Create database if not exists Game;
use game;

create table Users(
Id int primary key auto_increment,
Name VARCHAR(20) NOT NULL,
Email VARCHAR(40) NOT NULL,
Password VARCHAR(255) NOT NULL,
Status INT NOT NULL
);
