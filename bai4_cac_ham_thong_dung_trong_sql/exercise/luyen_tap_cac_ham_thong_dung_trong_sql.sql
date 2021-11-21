USE management_student_1;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT *
FROM Subjects
WHERE Credit = (SELECT MAX(Credit) FROM Subjects );

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT Subjects.Sub_Id ,Subjects.Sub_Name ,Subjects.Credit ,Subjects.Statuss ,MAX(Mark.Mark) AS 'điểm thi lớn nhất'
FROM Subjects 
JOIN Mark ON Subjects.Sub_Id = Mark.Sub_Id;

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT Students.Student_Id ,Students.Student_Name ,Students.Address 
,Students.Phone ,Students.Statuss ,Mark.Mark , AVG (Mark.Mark) AS ' điểm trung bình'
FROM Students
JOIN MARK ON Students.Student_Id =Mark.Student_Id
GROUP BY Students.Student_Id , Students.Student_Name
ORDER BY ' điểm trung bình' DESC;