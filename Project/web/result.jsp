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
        <title>Search for users</title>
    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <body>
    <jsp:include page="navbar.jsp" />
        <div class="container text-center">
            <c:if test="${yes}">
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <br>
                        <h1>Search for users</h1>
                        <br>
                        <form action="/Project/search" method="POST">
                            <div class="row">
                                <div class="col-md-8 text-right">
                                    <input type="text" name="search" placeholder="First name, last name or username" class="form-control">
                                </div>
                                <input type="submit" class="col-md-3 btn btn-primary" name="searchbtn"  class="btn btn-primary" value="Search">
                            </div>
                        </form>
                    </div>
                </div>
            </c:if>
            <br><br>
            <c:if test="${Size!=0}">
                <center><p>Total users count : <c:out value="${numberUsers}"/></p></center>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <table class="table table-hover">
                            <tr>
                                <th scope="col"><b>First Name</b></th>
                                <th scope="col"><b>Last Name</b></th>
                                <th scope="col"><b>Username</b></th>
                            </tr>
                            <c:forEach var="i" begin="0" end="${Size-1}" step="3" >
                                <tr> 

                                        <td><c:out value="${Result.get(i)}" /></td>
                                        <td><c:out value="${Result.get(i+1)}" /></td>
                                        <td><c:out value="${Result.get(i+2)}" /></td>    
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </c:if>
            <c:if test="${Size==0}">
                <p>No users were found</p>
            </c:if>
        </div>
    </body>
</html>
