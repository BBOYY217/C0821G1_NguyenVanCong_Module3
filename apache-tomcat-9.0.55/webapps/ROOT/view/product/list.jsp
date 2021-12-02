<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/2/2021
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/Products">Create new product</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="produst">
        <tr>
            <td><a href="/Product?action=view&id=${produsts.getId()}">${produst.getName()}</a></td>
            <td>${produst.getPrice()}</td>
            <td>${produst.getDescribe()}</td>
            <td><a href="/Products?action=edit&id=${produst.getId()}">edit</a></td>
            <td><a href="/Products?action=delete&id=${produst.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>