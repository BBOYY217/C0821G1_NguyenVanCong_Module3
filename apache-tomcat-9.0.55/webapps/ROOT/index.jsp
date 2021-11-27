<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/26/2021
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<style type="text/css">
  .login {
    height:180px; width:230px;
    margin:0;
    padding:10px;
    border:1px #CCC solid;
  }
  .login input {
    padding:5px; margin:5px
  }
</style>
<body>
<form method="post" action="/login">
  <div class="login">
    <h2>Login</h2>
    <label>
      <input type="text" name="username" size="25"  placeholder="username" />
    </label>
    <label>
      <input type="password" name="password" size="25" placeholder="password" />
    </label>
    <input type="submit" value="Sign in"/>
  </div>
</form>
</body>
</html>