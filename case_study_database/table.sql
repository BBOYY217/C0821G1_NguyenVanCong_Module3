DROP DATABASE IF EXISTS furama_database;
CREATE DATABASE furama_database;
USE furama_database;

CREATE TABLE vi_tri(
ma_vi_tri INT AUTO_INCREMENT PRIMARY KEY,
ten_vi_tri VARCHAR(45)
);

CREATE TABLE trinh_do(
ma_trinh_do INT AUTO_INCREMENT PRIMARY KEY,
ten_trinh_do VARCHAR (45)
);

CREATE TABLE bo_phan(
ma_bo_phan INT AUTO_INCREMENT PRIMARY KEY,
ten_bo_phan VARCHAR(45)
);

CREATE TABLE loai_khach(
ma_loai_khach INT AUTO_INCREMENT PRIMARY KEY ,
ten_loai_khach VARCHAR (45)
);

CREATE TABLE dich_vu_di_kem(
ma_dich_vu_di_kem INT AUTO_INCREMENT PRIMARY KEY,
ten_dich_vu_di_kem VARCHAR (45),
gia INT,
don_vi INT,
trang_thai VARCHAR (45)
);

CREATE TABLE loai_dich_vu(
ma_loai_dich_vu INT AUTO_INCREMENT PRIMARY KEY,
ten_loai_dich_vu VARCHAR (45)
);

CREATE TABLE kieu_thue(
ma_kieu_thue INT AUTO_INCREMENT PRIMARY KEY,
ten_kieu_thue VARCHAR (45),
gia_thue INT 
);

CREATE TABLE nhan_vien(
ma_nhan_vien INT AUTO_INCREMENT PRIMARY KEY,
ho_ten VARCHAR (45),
so_cmnd VARCHAR (45),
luong INT,
so_dien_thoai VARCHAR(45),
email VARCHAR (45),
dia_chi VARCHAR (45),
ma_vi_tri INT,
ma_trinh_do INt,
ma_bo_phan INT,
FOREIGN KEY (ma_vi_tri) REFERENCES vi_tri (ma_vi_tri),
FOREIGN KEY (ma_trinh_do) REFERENCES trinh_do (ma_trinh_do),
FOREIGN KEY (ma_bo_phan) REFERENCES bo_phan (ma_bo_phan)
);

CREATE TABLE khach_hang(
ma_khach_hang INT AUTO_INCREMENT PRIMARY KEY,
ho_ten VARCHAR (45),
ngay_sinh DATE,
gioi_tinh VARCHAR(10),
so_cmnd VARCHAR (45),
so_dien_thoai VARCHAR (45),
email VARCHAR (45),
dia_chi VARCHAR (45),
ma_loai_khach INT,
FOREIGN KEY (ma_loai_khach) REFERENCES loai_khach (ma_loai_khach)
);

CREATE TABLE dich_vu(
ma_dich_vu INT AUTO_INCREMENT PRIMARY KEY,
ten_dich_vu VARCHAR (45),
dien_tich INT,
chi_phi_thue INT,
so_nguoi_toi_da INT,
tieu_chuan_phong VARCHAR (45),
mo_ta_tien_nghi_khac VARCHAR (45),
dien_tich_ho_boi INT,
so_tang INT,
ma_kieu_thue INT,
ma_loai_dich_vu INT,
FOREIGN KEY (ma_kieu_thue) REFERENCES kieu_thue (ma_kieu_thue),
FOREIGN KEY (ma_loai_dich_vu) REFERENCES loai_dich_vu (ma_loai_dich_vu)
);

CREATE TABLE hop_dong(
ma_hop_dong INT AUTO_INCREMENT PRIMARY KEY,
ngay_bat_dau DATE,
ngay_ket_thuc DATE,
tien_dat_coc INT,
tong_tien INT,
ma_nhan_vien INT,
ma_khach_hang INT,
ma_dich_vu INT,
FOREIGN KEY (ma_nhan_vien) REFERENCES nhan_vien (ma_nhan_vien),
FOREIGN KEY (ma_khach_hang) REFERENCES khach_hang (ma_khach_hang),
FOREIGN KEY (ma_dich_vu) REFERENCES dich_vu (ma_dich_vu)
);

CREATE TABLE hop_dong_chi_tiet(
ma_hop_dong_chi_tiet INT AUTO_INCREMENT PRIMARY KEY,
so_luong INT,
ma_hop_dong INT,
ma_dich_vu_di_kem INT,
FOREIGN KEY (ma_hop_dong) REFERENCES hop_dong (ma_hop_dong),
FOREIGN KEY (ma_dich_vu_di_kem) REFERENCES dich_vu_di_kem (ma_dich_vu_di_kem)
);
