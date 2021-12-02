USE furama_database;
SET FOREIGN_KEY_CHECKS=0;
SET SQL_SAFE_UPDATES = 0;

DELETE FROM khach_hang 
 WHERE khach_hang.ma_khach_hang NOT IN (SELECT hop_dong.khach_hang 
									   FROM hop_dong 
                                       WHERE year(hop_dong.ngay_bat_dau) < 2016);

