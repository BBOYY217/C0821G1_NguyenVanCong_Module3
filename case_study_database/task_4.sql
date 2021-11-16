USE furama_database;

SELECT khach_hang.ma_khach_hang,khach_hang.ho_ten,COUNT(hop_dong.ma_hop_dong)
FROM khach_hang
JOIN hop_dong ON khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
WHERE khach_hang.ma_loai_khach = 1
GROUP BY khach_hang.ho_ten
ORDER BY COUNT(hop_dong.ma_hop_dong) ASC;