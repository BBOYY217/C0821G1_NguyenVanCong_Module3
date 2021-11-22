USE furama_database; 

SELECT hop_dong.ma_hop_dong ,nhan_vien.ho_ten ,khach_hang.ho_ten ,khach_hang.so_dien_thoai ,
dich_vu.ten_dich_vu ,hop_dong.ngay_bat_dau ,hop_dong.tien_dat_coc ,
COUNT(hop_dong_chi_tiet.ma_hop_dong_chi_tiet) AS 'so_luong_dich_vu_di_kem'
FROM hop_dong 
JOIN nhan_vien ON  hop_dong.ma_nhan_vien =  nhan_vien.ma_nhan_vien
JOIN khach_hang ON  hop_dong.ma_khach_hang =  khach_hang.ma_khach_hang
JOIN dich_vu ON  hop_dong.ma_dich_vu =  dich_vu.ma_dich_vu
JOIN hop_dong_chi_tiet ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
WHERE (MONTH(hop_dong.ngay_bat_dau) IN (10,11,12)) AND 
(MONTH(hop_dong.ngay_bat_dau) NOT IN (1,2,3,4,5,6)) AND YEAR(hop_dong.ngay_bat_dau) = 2019
GROUP BY hop_dong_chi_tiet.ma_hop_dong;

 
