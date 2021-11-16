USE furama_database;

SELECT dich_vu.ma_dich_vu ,dich_vu.ten_dich_vu ,dich_vu.dien_tich,
dich_vu.chi_phi_thue, loai_dich_vu.ten_loai_dich_vu
FROM dich_vu 
JOIN loai_dich_vu  ON dich_vu.ma_loai_dich_vu= loai_dich_vu.ma_loai_dich_vu
JOIN hop_dong ON hop_dong.ma_dich_vu=dich_vu.ma_dich_vu
WHERE NOT( month((ngay_bat_dau)) IN (1,2,3) and year(ngay_bat_dau) = 2019);