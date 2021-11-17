USE management_student_1;

INSERT INTO Class(ClassName ,StartDate ,Statuss)
VALUES 
('A1', '2008-12-20', 1),
('A2', '2008-12-22', 1),
('B3', '2008-12-15', 0);

INSERT INTO Students (StudentName, Address, Phone, Statuss, ClassId)
VALUES 
('Hung', 'Ha Noi'   , '0912113113', 1, 1),
('Hoa' , 'Hai phong', '0912113113', 1, 1),
('Manh', 'HCM'      , '0123123123', 0, 2);

INSERT INTO Subjects (SubName ,Credit ,Statuss)
VALUES ('CF', 5, 1),
       ('C', 6, 1),
       ('HDJ', 5, 1),
       ('RDBMS', 10, 1);
       
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);