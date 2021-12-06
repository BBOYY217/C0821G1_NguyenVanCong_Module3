<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/5/2021
  Time: 8:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Subject Management Application</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">

</head>
<body>

<h1>Subject Management</h1>
<a href="/subject_list?action=Insert">Create new subject</a>
<div>
    <h2>List of subject</h2>
    <table class="table table-dark table-striped">
        <tr>
            <th>No</th>
            <th>ID</th>
            <th>Name</th>
            <th>Version</th>
            <th>Mode</th>
            <th>Time</th>
            <th>Action</th>
        </tr>
        <c:forEach var="subjectObj" items="${listSubject}" varStatus="loop">
            <tr>
                <td> <c:out value="${loop.count}" /></td>
                <td><c:out value="${subjectObj.id}"/></td>
                <td><c:out value="${subjectObj.name}"/></td>
                <td><c:out value="${subjectObj.version}"/></td>
                <td><c:out value="${subjectObj.mode}"/></td>
                <td><c:out value="${subjectObj.time}"/></td>
                <td>
                    <a href="/subject_list?action=edit&id=${subjectObj.id}">Edit</a>
                    <a href="/subject_list?action=delete&id=${subjectObj.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<script src="../js/bootstrap.min.js" ></script>
</body>
</html>