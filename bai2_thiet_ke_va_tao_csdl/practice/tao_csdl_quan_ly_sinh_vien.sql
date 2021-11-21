DROP DATABASE IF EXISTS management_student_1;
CREATE DATABASE management_student_1;
USE management_student_1;

CREATE TABLE Class(
Class_Id   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
class_Name VARCHAR(60) NOT NULL,
Start_Date DATETIME    NOT NULL,
Statuss    BIT
);

CREATE TABLE Students(
Student_Id   INT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
Student_Name VARCHAR(30) NOT NULL,
Address      VARCHAR(50),
Phone        VARCHAR(20),
Statuss      BIT,
Class_Id     INT NOT NULL,
FOREIGN KEY (Class_Id) REFERENCES Class (Class_Id)
);

CREATE TABLE Subjects(
Sub_Id   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
Sub_Name VARCHAR(30) NOT NULL,
Credit   TINYINT     NOT NULL DEFAULT 1 CHECK ( Credit >= 1 ),
Statuss  BIT                  DEFAULT 1
);

CREATE TABLE Mark(
Mark_Id    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Sub_Id     INT NOT NULL,
Student_Id INT NOT NULL,
Mark       FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
Exam_Times TINYINT DEFAULT 1,
UNIQUE (Sub_Id, Student_Id),
FOREIGN KEY (Sub_Id)     REFERENCES Subjects (Sub_Id),
FOREIGN KEY (Student_Id) REFERENCES Students (Student_Id)
);