<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/4/2021
  Time: 11:04 PM
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
    <h2>
        <a href="Games?action=Games">List All Game</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit game
                </h2>
            </caption>
            <c:if test="${game != null}">
                <input type="hidden" name="id" value="<c:out value='${game.id}' />"/>
            </c:if>
            <tr>
                <th>Game Name:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${user.name}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Game Version:</th>
                <td>
                    <input type="text" name="version" size="45"
                           value="<c:out value='${user.version}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Game mode:</th>
                <td>
                    <input type="text" name="mode" size="15"
                           value="<c:out value='${game.mode}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Game category:</th>
                <td>
                    <input type="text" name="category" size="15"
                           value="<c:out value='${game.category}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>