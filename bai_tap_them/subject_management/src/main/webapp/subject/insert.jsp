<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/6/2021
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new subject</title>
    <style>
        .message{
            color:green;
        }
    </style>
</head>
<body>
<h1>Create new subject</h1>
<p>
</p>
<p>
    <a href="/subject_list">Back to customer list</a>
</p>
<h1>Subject</h1>
<form method="post">
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Version: </td>
                <td><input type="text" name="version" ></td>
            </tr>
            <tr>
                <td>Mode: </td>
                <td><input type="text" name="mode" ></td>
            </tr>
            <tr>
                <td>Time: </td>
                <td><input type="text" name="time"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create subject"></td>
            </tr>
        </table>
</form>
</body>
</html>

