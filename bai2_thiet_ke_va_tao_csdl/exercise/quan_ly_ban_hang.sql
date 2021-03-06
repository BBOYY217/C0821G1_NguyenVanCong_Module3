DROP DATABASE IF EXISTS quan_ly_ban_hang ;
CREATE DATABASE quan_ly_ban_hang;
USE quan_ly_ban_hang;

CREATE TABLE Customer(
cId INT AUTO_INCREMENT PRIMARY KEY,
cName VARCHAR(50),
cAge INT 
);

CREATE TABLE Orders(
oId INT AUTO_INCREMENT PRIMARY KEY,
cId INT,
oDate DATE,
oTotalPrice FLOAT NOT NULL,
FOREIGN KEY(cId) REFERENCES Customer(cId)
);

CREATE TABLE Product(
pId INT AUTO_INCREMENT PRIMARY KEY,
pName VARCHAR(50),
pPrice INT
);

CREATE TABLE Order_detail(
oId INT,
pId INT,
PRIMARY KEY(oId,pId),
odQTY INT ,
FOREIGN KEY (oId) REFERENCES Orders(oId),
FOREIGN KEY (pId) REFERENCES Product(pId)
);