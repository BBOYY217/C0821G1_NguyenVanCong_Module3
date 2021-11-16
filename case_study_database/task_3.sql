USE furama_database;

SELECT*
FROM khach_hang
WHERE ((year(CURDATE())-year(ngay_sinh)) BETWEEN 18 AND 50) AND dia_chi IN ('Da Nang','Quang Tri');