USE furama_database;
SET FOREIGN_KEY_CHECKS=0;
SET SQL_SAFE_UPDATES = 0;

DELETE 
FROM nhan_vien
WHERE  ma_nhan_vien NOT IN ( select ma_nhan_vien
						   from hop_dong 
						   where year(hop_dong.ngay_bat_dau) BETWEEN 2017 AND 2019);
SET FOREIGN_KEY_CHECKS=1; 
SELECT * FROM nhan_vien;     