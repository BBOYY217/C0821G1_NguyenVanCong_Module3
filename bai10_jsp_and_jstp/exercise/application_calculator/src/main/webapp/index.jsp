<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2021
  Time: 10:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form method="get" action="${pageContext.request.contextPath}/CalculatorServlet">
    <h2>Calculator</h2>
        <table>
            <tr>
                <td>First operand: </td>
                <td><label>
                    <input name="first-operand" type="text"/>
                </label></td>
            </tr>
            <tr>
                <td>Operator: </td>
                <td>
                    <label>
                        <select name="operator">
                            <option value="+">Addition</option>
                            <option value="-">Subtraction</option>
                            <option value="*">Multiplication</option>
                            <option value="/">Division</option>
                        </select>
                    </label>
                </td>
            </tr>
            <tr>
                <td>Second operand: </td>
                <td><label>
                    <input name="second-operand" type="text"/>
                </label></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Calculate"/></td>
            </tr>
        </table>
</form>
</body>
</html>