USE quan_ly_ban_hang;

INSERT INTO Customer(cName ,cAge)
VALUES
( 'Minh Quan', 10),
( 'Ngoc Oanh', 20),
( 'Hong Ha'  , 50);

INSERT INTO Orders(cId ,oDate ,oTotalPrice)
VALUES
( 1 ,'2006-03-21', 10.0),
( 3 ,'2006-03-23', 20.0),
( 2 ,'2006-03-16', 30.0);

INSERT INTO Product(pName ,pPrice)
VALUES
( 'May Giat', 3),
( 'Tu Lanh' , 5),
( 'Dieu Hoa', 7),
( 'Quat'    , 1),
( 'Bep Dien', 2);

INSERT INTO Order_detail (oId ,pId ,odQTY)
VALUES
(1 ,1 ,3),
(1 ,3 ,7),
(1 ,4 ,2),
(2 ,1 ,1),
(3 ,1 ,8),
(2 ,5 ,4),
(2 ,3 ,3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT oId ,oDate ,oTotalPrice
FROM Orders ;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách 
SELECT Customer.cName ,Product.pName ,Order_detail.odQTY
FROM Customer
JOIN Orders       ON Customer.cId = Orders.cId
JOIN Order_detail ON Orders.oId = Order_detail.oId
JOIN Product      ON Order_detail.pId = Product.pId;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT Customer.cId, Customer.cName
FROM Customer
LEFT JOIN Orders ON Customer.cId = Orders.cId
WHERE Orders.oId IS NULL;
