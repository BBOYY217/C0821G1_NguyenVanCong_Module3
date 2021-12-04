CREATE DATABASE demo;
USE demo;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 namer varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);
insert into users(namer, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(namer, email, country) values('Kante','kante@che.uk','Kenia');
