USE management_student_1;
SET SQL_SAFE_UPDATES = 0;

SELECT *
FROM Students
WHERE StudentName LIKE "H%";

SELECT *
FROM Class
WHERE MONTH(StartDAte) = 12;

SELECT *
FROM Subjects
WHERE Credit BETWEEN 3 AND 5;

UPDATE Students
SET ClassId = 2 
WHERE StudentName = 'Hung';

SELECT Students.StudentName ,Subjects.SubName ,Mark.Mark
FROM Mark
JOIN Subjects ON Subjects.SubId = Mark.SubId
JOIN Students ON Students.StudentId = Mark.StudentId
ORDER BY Mark.Mark ASC