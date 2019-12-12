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
        <title>User Input</title>
    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style>
         .deleteButton {
            cursor: pointer;	
         }
    </style>
    <script>
        function deleteLine(lineNumber)
        {
            document.getElementById("line"+lineNumber).style.display="none"
        }
    </script>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8 text-center">
                        <h1>Input new user(s)</h1>
                        <br>
                        <form action="http://localhost:8080/Project/addServlet" method="post">
                            <table class="table table-sm table-borderless">
                                <tr>
                                    <th>First name</th>
                                    <th>Last name</th>
                                    <th>Username</th>
                                    <th>Delete this line</th>
                                </tr>
                                <c:forEach var="i" begin="1" end="4" step="1">
                                    <tr id=line${i}>
                                        <td><input type="text" name="firstName${i}" placeholder="First name"></td>
                                        <td><input type="text" name="lastName${i}" placeholder="Last name"></td>
                                        <td><input type="text" name="userName${i}" placeholder="User name"></td>
                                        <td class="deleteButton" onclick="deleteLine(${i})"><img src="https://cdn3.iconfinder.com/data/icons/simple-files-1/128/No-512.png" width="50px" height="50px"</td>
                                    </tr>
                                </c:forEach>
                            </table>
                            <input type="submit" class="btn btn-success" value="Submit">
                            <a href="/Project/search.jsp" class="btn btn-dark">
                                Search User
                            </a>
                            <a href="/Project/index.jsp" class="btn btn-danger">
                               Reset input table
                            </a>
                      </form>
              </div>
              <div class="col-md-2"></div>
          </div>
      </div>
    </body>
</html>
