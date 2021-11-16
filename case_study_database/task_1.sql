USE furama_database;

INSERT INTO vi_tri (ten_vi_tri)
VALUES
('Lễ tân'),
('Phục vụ'),
('Chuyên viên'),
('Giám sát'),
('Quản lý'),
('Giá đốc'); 

INSERT INTO trinh_do(ten_trinh_do)
VALUES
('Trung cấp'),
('Cao đẳng'),
('Đại học'),
('sau đại học');

INSERT INTO bo_phan(ten_bo_phan)
VALUES
('Sale – Marketing'),
('Hành Chính'),
('Phục vụ'),
('Quản lý');

INSERT INTO loai_khach(ten_loai_khach)
VALUES
('Diamond'),
('Platinium'),
('Gold'),
('Silver'),
('Member');

INSERT INTO dich_vu_di_kem(ten_dich_vu_di_kem ,gia ,don_vi ,trang_thai )
VALUES
('massage', 700000, 1, 'Còn'),
('karaoke', 400000, 1, 'Còn'),
('Thức ăn', 300000, 1, 'Còn '),
('Nước uống', 100000, 1, 'Còn '),
('Thuê xe', 2000000, 1, 'Còn');

INSERT INTO loai_dich_vu(ten_loai_dich_vu)
VALUES
('Villa'),
('Room'),
('House');

INSERT INTO kieu_thue(ten_kieu_thue, gia_thue)
VALUES
('Năm'  , 500000000),
('Tháng', 100000000),
('Ngày' , 2000000),
('Giờ'  , 500000);

INSERT INTO nhan_vien(ho_ten ,so_cmnd ,luong ,so_dien_thoai ,email ,dia_chi ,ma_vi_tri ,ma_trinh_do ,ma_bo_phan)
VALUES
('Nguyen Van A' ,'123456789' ,5000000 ,'987654321' ,'A@gmail.com' ,'Da Nang'    ,1 ,4 ,1 ),
('Nguyen Van B' ,'123456789' ,5000000 ,'987654321' ,'B@gmail.com' ,'Quang Binh' ,2 ,4 ,1 ),
('Nguyen Van K' ,'123456789' ,5000000 ,'987654321' ,'K@gmail.com' ,'Sai Gon'    ,3 ,3 ,3 ),
('Nguyen Van D' ,'123456789' ,8000000 ,'987654321' ,'D@gmail.com' ,'Ha Noi'     ,4 ,4 ,4 ),
('Nguyen Van T' ,'123456789' ,5000000 ,'987654321' ,'T@gmail.com' ,'Nha Trang'  ,5 ,4 ,2 );

INSERT INTO khach_hang(ho_ten ,ngay_sinh ,gioi_tinh ,so_cmnd ,so_dien_thoai ,email ,dia_chi ,ma_loai_khach )
VALUES
('Le Anh Tuan'   ,'1999-01-21' ,'Nam' ,'123456789' ,'987654321' ,'Tuan@gmail.com' ,'Quang Ngai' , 1 ),
('Tran Anh Duy'  ,'1999-06-17' ,'Nam' ,'123456789' ,'987654321' ,'Duy@gmail.com'  ,'Ha Noi'     , 2 ),
('Nguyen Thi Ha' ,'199-08-05'  ,'Nu'  ,'123456789' ,'987654321' ,'Ha@gmail.com'   ,'Binh Dinh'  , 3 ),
('Vo Yen Nhi'    ,'1999-11-21' ,'Nu'  ,'123456789' ,'987654321' ,'Nhi@gmail.com'  ,'Quang Tri'  , 4 );

INSERT INTO dich_vu (ten_dich_vu ,dien_tich ,chi_phi_thue ,so_nguoi_toi_da ,tieu_chuan_phong ,mo_ta_tien_nghi_khac ,dien_tich_ho_boi ,so_tang ,ma_kieu_thue , ma_loai_dich_vu )
VALUES
('Thuê Villa 1',350 ,4000000 ,5 , 'V.I.P','dep' ,400 ,3 , 1, 1),
('Thuê Room 1',450 ,3000000 ,5 , 'V.I.P','dep' ,300 ,3 , 1, 2),
('Thuê House 1',550 ,8000000 ,5 , 'V.I.P','dep' ,600 ,4 , 2, 3);


INSERT INTO hop_dong(ngay_bat_dau ,ngay_ket_thuc ,tien_dat_coc ,tong_tien ,ma_nhan_vien ,ma_khach_hang ,ma_dich_vu )
VALUES
('2021-03-15' ,'2021-03-20', 5000000 , 10000000 , 4 , 2 , 1),
('2019-03-15' ,'2019-03-20', 5000000 , 10000000 , 2 , 3 , 1),
('2021-06-20' ,'2021-06-25', 2500000 , 50000000 , 3 , 1 , 2);

INSERT INTO hop_dong_chi_tiet(so_luong ,ma_hop_dong ,ma_dich_vu_di_kem)
VALUES
(1,1,3),
(2,2,5);




