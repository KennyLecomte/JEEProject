<%-- 
    Document   : result
    Created on : 29 nov. 2019, 13:48:46
    Author     : efrouin.ing2021
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
    </head>
    <style> 
        div, h1 {
            text-align: center;
        }

        td, th {
           border: 1px solid #dddddd;
           text-align: center;
        }
          
        table {
           font-family: arial, sans-serif;
           border-collapse: collapse;
        }
    </style>
    <body>
        <h1>Results</h1>
        <table>
            <tr>
                <th><b>First Name</b></th>
                <th><b>Last Name</b></th>
                <th><b>Login</b></th>
            </tr>
            <c:forEach var="i" begin="0" end="${(size*3)-1}" step="3" >
                <tr> 
                    <td><c:out value="${data.get(i)}" /></td>
                    <td><c:out value="${data.get(i+1)}" /></td>
                    <td><c:out value="${data.get(i+2)}" /></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
