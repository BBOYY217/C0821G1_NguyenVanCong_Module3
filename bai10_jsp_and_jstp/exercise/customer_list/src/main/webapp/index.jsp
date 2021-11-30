<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2021
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="style.css">
<html>
<head>
    <title>List customer</title>
</head>
<body>
<h1>List customer</h1>
<table>
    <tr>
        <th>Name</th>
        <th>Date of birth</th>
        <th>Address</th>
        <th>IMG</th>
    </tr>
    <c:forEach var="customerObj" items="${CustomerListServlet}">
        <tr>
            <td><c:out value="${customerObj.name}"/></td>
            <td><c:out value="${customerObj.dateOfBirth}"/></td>
            <td><c:out value="${customerObj.address}"/></td>
            <td><c:out value="${customerObj.img}"/></td>
        </tr>
    </c:forEach>
</table>
</form>
</body>
</html>
