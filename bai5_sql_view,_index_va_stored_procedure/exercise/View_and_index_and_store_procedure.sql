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
  
  -- Index
SELECT *
FROM Products
WHERE productName = 'Raze';

CREATE UNIQUE INDEX get_productCode
ON Products(productCode);

CREATE INDEX get_productCode
ON Products(productCode,productName);

EXPLAIN SELECT *
FROM Products;

-- View

CREATE VIEW all_products
AS  SELECT Products.productCode   'productCode',
		   Products.productName   'productName',
		   Products.productPrice  'productPrice',
	       Products.productStatus 'productStatus'
FROM Products ;  

UPDATE all_products
SET productCode = 165
WHERE productName = 'dell';

DROP VIEW all_products;

-- Store procedure

DELIMITER //
CREATE PROCEDURE sp_products()
BEGIN
    SELECT *
    FROM Products;
END;
DELIMITER //;

DELIMITER //
CREATE PROCEDURE sp_products(productCode INT,productName VARCHAR(50),productPrice INT
,productAmount INT,productDescription VARCHAR(50),productStatus VARCHAR(50))
BEGIN
INSERT INTO Products (productCode,productName,productPrice,productAmount,productDescription,productStatus)
VALUES (productCode,productName,productPrice,productAmount,productDescription,productStatus);
END; 
DELIMITER //;