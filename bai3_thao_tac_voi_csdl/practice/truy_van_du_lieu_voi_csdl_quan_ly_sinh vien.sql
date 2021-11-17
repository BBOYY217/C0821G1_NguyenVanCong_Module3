USE management_student_1;

SELECT *
FROM Students
WHERE Statuss = true;

SELECT *
FROM Subjects
WHERE Credit < 10;

SELECT Students.StudentId, Students.StudentName, Class.ClassName
FROM Students
JOIN Class ON Students.ClassId = Class.ClassID
WHERE Class.ClassName = 'A1'; 

SELECT Students.StudentId, Students.StudentName, Subjects.SubName, Mark.Mark
FROM Students 
JOIN Mark  ON Students.StudentId = Mark.StudentId 
JOIN Subjects ON Mark.SubId = Subjects.SubId
WHERE Subjects.SubName = 'CF';
