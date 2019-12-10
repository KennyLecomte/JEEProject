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
        <title>Added User List</title>
    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style> 
        div, h1 {
            text-align: center;
        }

        td, th, a, tr {
           border: 1px solid #dddddd;
           text-align: center;
        }
          
        table {
           font-family: arial, sans-serif;
           border-collapse: collapse;
        }
    </style>
    <body>
        <h1>Added User List</h1>
        <table class="table table-hover">
            <tr>
                <th><b>First Name</b></th>
                <th><b>Last Name</b></th>
                <th><b>Username</b></th>
            </tr>
            <c:forEach var="i" begin="0" end="${(size*3)-1}" step="3" >
                <tr> 
                    <td><c:out value="${data.get(i)}" /></td>
                    <td><c:out value="${data.get(i+1)}" /></td>
                    <td><c:out value="${data.get(i+2)}" /></td>
                </tr>
            </c:forEach>
        </table>
        <div>
        <a href="/Project/index.jsp">
                    <input class="btn btn-primary" value="Add more">
        </a>
        <a href="/Project/search.jsp">
                    <input class="btn btn-primary" value="Search User">
        </a>
        </div>
    </body>
</html>
