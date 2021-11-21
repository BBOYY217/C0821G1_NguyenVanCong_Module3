USE furama_database;

SELECT dich_vu_di_kem.ma_dich_vu_di_kem ,dich_vu_di_kem.ten_dich_vu_di_kem ,
dich_vu_di_kem.gia ,khach_hang.ho_ten 
FROM dich_vu_di_kem
JOIN hop_dong_chi_tiet ON dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
JOIN hop_dong ON hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong
JOIN khach_hang ON khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
JOIN loai_khach ON loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
WHERE(loai_khach.ten_loai_khach = 'Diamond') AND (khach_hang.dia_chi = "Vinh"  OR  khach_hang.dia_chi = "Quang Ngai");
