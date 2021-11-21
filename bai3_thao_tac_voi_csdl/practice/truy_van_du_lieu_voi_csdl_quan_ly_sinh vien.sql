USE management_student_1;

SELECT *
FROM Students
WHERE Statuss = true;

SELECT *
FROM Subjects
WHERE Credit < 10;

SELECT Students.Student_Id, Students.Student_Name, Class.Class_Name
FROM Students
JOIN Class ON Students.Class_Id = Class.Class_Id
WHERE Class.Class_Name = 'A1'; 

SELECT Students.Student_Id, Students.Student_Name, Subjects.Sub_Name, Mark.Mark
FROM Students 
JOIN Mark  ON Students.Student_Id = Mark.Student_Id 
JOIN Subjects ON Mark.Sub_Id = Subjects.Sub_Id
WHERE Subjects.Sub_Name = 'CF';
