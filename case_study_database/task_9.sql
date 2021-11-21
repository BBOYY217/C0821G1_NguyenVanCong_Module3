USE furama_database;

SELECT MONTH(hop_dong.ngay_bat_dau) AS 'thang' ,
COUNT(hop_dong.ma_khach_hang) AS 'so_luong_khach_dat',
SUM(dich_vu.chi_phi_thue + hop_dong_chi_tiet.so_luong * dich_vu_di_kem.gia) AS 'tong_tien'
FROM hop_dong  
JOIN dich_vu ON hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
JOIN hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
JOIN dich_vu_di_kem ON hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
WHERE YEAR (ngay_bat_dau) = 2019
GROUP BY 'thang';
