<%-- 
    Document   : index
    Created on : 29 nov. 2019, 08:36:49
    Author     : klecomte.ir2021
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project</title>
    </head>
    <body>
        <h1>Input new user(s)</h1>
        <table style="width:100%">
        <tr>
            <th>First name</th>
            <th>Last name</th>
            <th>Login (user name)</th>
            <th>Delete this line</th>
        </tr>
        <c:forEach var="i" begin="1" end="3" step="1">
            <tr>
                <td><input name="firstName" placeholder="First name"></td>
                <td><input name="lastName" placeholder="Last name"></td>
                <td><input name="userName" placeholder="User name"></td>
                <td><input name="userName" placeholder="User name"></td>
            </tr>
        </c:forEach>
      </table>
    </body>
</html>
