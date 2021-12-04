DROP DATABASE IF EXISTS student_management_demo;
CREATE DATABASE student_management_demo;
USE student_management_demo;

CREATE TABLE students (
 id  INT (45)  PRIMARY KEY AUTO_INCREMENT,
 namer VARCHAR(45) NOT NULL,
 gender VARCHAR(45) NOT NULL,
 age INT(45) NOT NULL,
 medium_score INT(45)
);

INSERT INTO students
VALUES
("Nguyen Van A" ,"Nam" ,19 ,10),
("Nguyen Van B" ,"Nu" ,19 ,8),
("Nguyen Van C" ,"Nam" ,19 ,5);


