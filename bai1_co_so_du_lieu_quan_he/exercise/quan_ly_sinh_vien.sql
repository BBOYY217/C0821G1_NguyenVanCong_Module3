DROP DATABASE IF EXISTS management_student;
CREATE DATABASE management_student;
USE management_student;

CREATE TABLE class(
Id  INT PRIMARY KEY ,
Namer VARCHAR(50) 
);

CREATE TABLE teacher(
Id INT PRIMARY KEY ,
Namer VARCHAR (50),
Age INT ,
Country VARCHAR (50)
);
