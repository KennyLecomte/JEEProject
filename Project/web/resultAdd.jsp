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
        <title>Input new user(s)</title>
    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <body>
        <jsp:include page="navbar.jsp" />
        <div class="container text-center">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-9">
                    <br>
                    <h1>These users were added to the database : </h1>
                    <br>
                    <table class="table table-hover ">
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
                </div>
            </div>
        </div>
    </body>
</html>
