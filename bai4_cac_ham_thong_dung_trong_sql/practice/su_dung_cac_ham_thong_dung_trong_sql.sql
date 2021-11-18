USE management_student_1;

-- Sử dụng hàm count để hiển thị số lượng sinh viên ở từng nơi
SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
FROM Students
GROUP BY Address;

-- Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG
SELECT Students.StudentId,Students.StudentName, AVG(Mark)
FROM Students
JOIN Mark  ON Students.StudentId = Mark.StudentId
GROUP BY Students.StudentId, Students.StudentName;

--  Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15
SELECT Students.StudentId,Students.StudentName, AVG(Mark)
FROM Students 
join Mark on Students.StudentId = Mark.StudentId
GROUP BY Students.StudentId, Students.StudentName
HAVING AVG(Mark) > 15;

-- Sử dụng Having và All để tìm học viên có điểm trung bình lớn nhất 
SELECT Students.StudentId, Students.StudentName, AVG(Mark)
FROM Students
JOIN Mark ON Students.StudentId = Mark.StudentId
GROUP BY Students.StudentId, Students.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);
