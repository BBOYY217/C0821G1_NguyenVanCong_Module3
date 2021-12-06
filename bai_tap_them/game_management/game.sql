DROP DATABASE IF EXISTS game_management;
CREATE DATABASE game_management;
USE game_management;

CREATE TABLE game(
id  INT PRIMARY KEY AUTO_INCREMENT,
namer VARCHAR(45) NOT NULL,
versionn VARCHAR(45) NOT NULL,
modes VARCHAR(45) NOT NULL,
category VARCHAR(45) NOT NULL
);

INSERT INTO game(namer, versionn, modes, category)
VALUES
("DOOM","1.0","hard","scary,fps"),
("LOL","30.0","medium","mobile"),
("Genshin","17.0","hard","mobile,character");

select id,namer,versionn,modes,category 
from game