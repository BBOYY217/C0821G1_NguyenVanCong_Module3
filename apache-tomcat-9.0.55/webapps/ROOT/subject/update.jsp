<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 12/6/2021
  Time: 5:13 PM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Update subject</title>
    <style>
        .message {
            color: green;
        }
    </style>
</head>
<body>
<h1>Update subject</h1>
<p>
    <a href="/subject_list">Back to customer list</a>
</p>
<h1>Subject</h1>
<table>
    <c:if test="${subjectObj != null}">
        <input type="hidden" name="id" value="<c:out value='${subjectObj.id}'/>"/>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" value="<c:out value="${subjectObj.name}"/>"></td>
        </tr>
        <tr>
            <td>Version:</td>
            <td><input type="text" name="version" value="<c:out value="${subjectObj.version}"/>"></td>
        </tr>
        <tr>
            <td>Mode:</td>
            <td><input type="text" name="mode" value="<c:out value="${subjectObj.mode}"/>"></td>
        </tr>
        <tr>
            <td>Time:</td>
            <td><input type="text" name="time" value="<c:out value="${subjectObj.time}"/>"></td>
        </tr>
        <tr>
            <td><input type="submit" value="save"></td>
        </tr>
    </c:if>
</table>
</body>
</html>
