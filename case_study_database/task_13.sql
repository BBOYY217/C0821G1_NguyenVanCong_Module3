USE furama_database;

SELECT hop_dong_chi_tiet.ma_dich_vu_di_kem,dich_vu_di_kem.ten_dich_vu_di_kem,
    COUNT(hop_dong_chi_tiet.ma_dich_vu_di_kem) AS so_luong_dich_vu_di_kem
FROM hop_dong_chi_tiet 
JOIN dich_vu_di_kem ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
GROUP BY hop_dong_chi_tiet.ma_dich_vu_di_kem
HAVING COUNT(hop_dong_chi_tiet.ma_dich_vu_di_kem) >= ALL (SELECT 
        COUNT(hop_dong_chi_tiet.ma_dich_vu_di_kem)
    FROM hop_dong_chi_tiet 
    GROUP BY hop_dong_chi_tiet.ma_dich_vu_di_kem);