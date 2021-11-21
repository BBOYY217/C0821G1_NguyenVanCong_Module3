USE furama_database;

SELECT hop_dong.ma_hop_dong ,hop_dong.ngay_bat_dau ,hop_dong.ngay_ket_thuc,hop_dong.tien_dat_coc,
COUNT(hop_dong_chi_tiet.ma_dich_vu_di_kem) AS so_luong_dich_vu_di_kem
FROM hop_dong 
JOIN hop_dong_chi_tiet ON hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
JOIN dich_vu_di_kem ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
GROUP BY hop_dong_chi_tiet.ma_hop_dong
ORDER BY hop_dong.ma_hop_dong;