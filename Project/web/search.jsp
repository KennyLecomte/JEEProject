<%-- 
    Document   : search
    Created on : 29 nov. 2019, 08:57:36
    Author     : efrouin.ing2021
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style> 
         div, h1 {
             text-align: center;
         }
    </style>
    <body>
        <h1>User Search</h1>		  
            <div class="md-form active-pink active-pink-2 mb-3 mt-0">
                <form action="http://localhost:8080/Project/searchServlet" method="POST">
                    <br>
                    <input type="text" name="search" placeholder="Name or Username">
                    <br><br>
                    <input type="submit" name="searchbtn"  class="btn btn-primary" value="Search">
                </form>
            </div>
        <div>
        <a href="/Project/index.jsp">
                    <input class="btn btn-secondary" value="Add more">
        </a>
        </div>
    </body>
</html>
