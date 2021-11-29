<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2021
  Time: 12:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
  <title>Simple Dictionary</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Vietnamese Dictionary</h2>
<form method="get" action="/Dictionary">
  <label>
    <input type="text" name="txtSearch" placeholder="Enter your word: "/>
  </label>
  <input type = "submit" id = "submit" value = "Search"/>
</form>
</body>
</html>
