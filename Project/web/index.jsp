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
    <style>
        td, th {
            border: 1px solid #dddddd;
            text-align: center;
          }
        table {
           font-family: arial, sans-serif;
           border-collapse: collapse;
         }
         
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
        <center>
            <h1>Input new user(s)</h1>
            <form action="http://localhost:8080/Project/addServlet" method="post">
                <table>
                    <tr>
                        <th>First name</th>
                        <th>Last name</th>
                        <th>Login (user name)</th>
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
                <br>
                <input type="submit" value="Submit">
          </form>
      </center>
    </body>
</html>
