USE furama_database;

-- C1
SELECT DISTINCT khach_hang.ho_ten
FROM  khach_hang;

-- C2
SELECT ho_ten
FROM khach_hang 
UNION 
SELECT ho_ten
FROM khach_hang;

-- C3
SELECT khach_hang.ho_ten 
FROM khach_hang 
GROUP BY khach_hang.ho_ten;
