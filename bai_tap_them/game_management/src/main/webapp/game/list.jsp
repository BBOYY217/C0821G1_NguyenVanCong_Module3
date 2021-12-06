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
    <h1>Game Management</h1>
<div>
    <table>
        <caption><h2>List of Game</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Version</th>
            <th>Mode</th>
            <th>Category</th>
        </tr>
        <c:forEach var="gameObj" items="${listGame}">
            <tr>
                <td><c:out value="${gameObj.id}"/></td>
                <td><c:out value="${gameObj.name}"/></td>
                <td><c:out value="${gameObj.version}"/></td>
                <td><c:out value="${gameObj.mode}"/></td>
                <td><c:out value="${gameObj.category}"/></td>
                <td>
                    <a href="/game_list?action=edit&id=${gameObj.id}">Edit</a>
                    <a href="/game_list?action=delete&id=${gameObj.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
