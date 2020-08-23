drop database if EXISTS casino;
create database casino;
use casino;
 
create table users (
    usid int not null auto_increment,
    name varchar(40) not null,
    email varchar(40) not null,
    password varchar(255) not null,
    credits double not null,
    role varchar(40) not null,
    Primary Key (usid)
);
 
create table games (
    gid int not null auto_increment,
    name varchar(40) not null,
    Primary Key (gid)
);
 
create table statistic (
    sid int not null auto_increment,
    gid int not null,
    usid int not null,
    bet double not null,
    win double not null,
    lost double not null,
    Primary Key (sid),
    FOREIGN KEY (gid) REFERENCES games (gid),
    FOREIGN KEY (usid) REFERENCES users (usid)
);

Insert into games values (1, "Slots");
Insert into games values (2, "Blackjack");
Insert into games values (3, "Roulette");
Insert into games values (4, "Bingo");
Insert into games values (5, "Yatzy");


Insert into users values (1, "admin", "admin@mail.com", 
"$2a$10$WJH4KegT0vzLV9xur4rcN.ZXuz6fOm6wPABrDU7FlyeQ1VVEaS8ji", 999999, "admin");
/*User 1 Admin hat Passwort 1234*/
Insert into users values (2, "test", "test@mail.com", 
"$2a$10$WJH4KegT0vzLV9xur4rcN.ZXuz6fOm6wPABrDU7FlyeQ1VVEaS8ji", 25000, "normal");
/*User 2 test hat Passwort 1234*/
