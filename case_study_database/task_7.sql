USE furama_database;

SELECT dich_vu.ma_dich_vu ,dich_vu.ten_dich_vu ,dich_vu.dien_tich ,
dich_vu.so_nguoi_toi_da ,dich_vu.chi_phi_thue ,dich_vu_di_kem.ten_dich_vu_di_kem

FROM dich_vu
JOIN dich_vu_di_kem.ma_dich_vu_di_kem ON dich_vu.ma_dich_vu = dich_vu_di_kem.ma_dich_vu_di_kem
JOIN hop_dong ON hop_dong.ma_dich_vu = dich_vu.ma_dich_vu

WHERE dich_vu.ma_dich_vu IN ( SELECT hop_dong.ma_dich_vu FROM hop_dong 
WHERE (YEAR(hop_dong.ngay_bat_dau) = 2018))
AND dich_vu.ma_dich_vu NOT IN( SELECT hop_dong.ma_dich_vu FROM hop_dong 
WHERE (YEAR(hop_dong.ngay_bat_dau) = 2019));
		