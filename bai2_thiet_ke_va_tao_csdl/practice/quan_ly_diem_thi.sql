DROP DATABASE IF EXISTS quan_ly_diem_thi;
CREATE DATABASE quan_ly_diem_thi;
USE quan_ly_diem_thi;

CREATE TABLE hoc_sinh(
ma_HS     VARCHAR(20) PRIMARY KEY,
ten_HS    VARCHAR(50),
ngay_sinh DATETIME,
lop      VARCHAR(20),
GT       VARCHAR(20)
);

CREATE TABLE mon_hoc(
ma_MH  VARCHAR(20) PRIMARY KEY,
ten_MH VARCHAR(50)
);

CREATE TABLE giao_vien(
ma_GV  VARCHAR(20) PRIMARY KEY,
ten_GV VARCHAR(20),
sdt   VARCHAR(10)
);

ALTER TABLE mon_hoc ADD ma_gv VARCHAR(20);
ALTER TABLE mon_hoc ADD CONSTRAINT FK_MaGV FOREIGN KEY (ma_GV) REFERENCES giao_vien(ma_GV);