DROP DATABASE IF EXISTS demo;
CREATE DATABASE demo;
USE demo;
 CREATE TABLE Products(
 Id INT PRIMARY KEY AUTO_INCREMENT,
 productCode INT ,
 productName VARCHAR(50),
 productPrice INT,
 productAmount INT,
 productDescription VARCHAR(50),
 productStatus VARCHAR(50)
 );
 
 INSERT INTO Products (productCode,productName,productPrice,productAmount,productDescription,productStatus)
 VALUES 
(155,'Raze',1000,3,'đẹp','hết hàng'),
(145,'Asus',1000,5,'đẹp','cháy hàng'),
(133,'Dell',1000,2,'đẹp','còn hàng');
  