<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/4/2021
  Time: 11:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting game</title>
</head>
<body>
<h1>Delete game</h1>
<p>
    <a href="/Games">Back to Game list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Game information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td>${requestScope["listGame"].getName()}</td>
            </tr>
            <tr>
                <td>Version: </td>
                <td>${requestScope["listGame"].getVersion()}</td>
            </tr>
            <tr>
                <td>Mode: </td>
                <td>${requestScope["listGame"].getMode()}</td>
            </tr>
            <tr>
                <td>Category: </td>
                <td>${requestScope["listGame"].getCategory()}</td>
            </tr>

            <tr>
                <td><input type="submit" value="Delete games"></td>
                <td><a href="/Games">Back to game list</a></td>
            </tr>
        </table>
    </fieldset>
</body>
</html>