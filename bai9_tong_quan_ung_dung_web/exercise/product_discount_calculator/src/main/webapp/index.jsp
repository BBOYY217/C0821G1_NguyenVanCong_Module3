<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2021
  Time: 1:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Product Discount Calculator</title>
  <link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>
<h1>Product Discount Calculator</h1>
<form method="get" action="/Calculator">
  <input type="text" name="product_description" placeholder="Enter product description: "><br>
  <input type="text" name="list_price" placeholder="Enter list price: "><br>
  <input type="text" name="discount_percent" placeholder="Enter discount percent (%): "><br>
  <input type="submit" class="submit" value="Calculate Discount">
</form>
</body>
</html>