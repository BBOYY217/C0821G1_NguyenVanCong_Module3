<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/4/2021
  Time: 10:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Game Management Application</title>
</head>
<body>
<center>
    <h1>Game Management</h1>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Game</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Version</th>
            <th>Mode</th>
            <th>Category</th>
        </tr>
        <c:forEach var="game" items="${listGame}">
            <tr>
                <td><c:out value="${game.id}"/></td>
                <td><c:out value="${game.name}"/></td>
                <td><c:out value="${game.version}"/></td>
                <td><c:out value="${game.mode}"/></td>
                <td><c:out value="${game.country}"/></td>
                <td>
                    <a href="/games?action=edit&id=${game.id}">Edit</a>
                    <a href="/games?action=delete&id=${game.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
