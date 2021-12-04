DROP DATABASE IF EXISTS game_management;
CREATE DATABASE game_management;
USE game_management;

CREATE TABLE game(
id  INT (45)  PRIMARY KEY AUTO_INCREMENT,
namer VARCHAR(45) NOT NULL,
versionn VARCHAR(45) NOT NULL,
modes INT(45) NOT NULL,
category INT(45) NOT NULL
);