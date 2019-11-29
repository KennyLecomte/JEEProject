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
    <style> 
         div, h1 {
             text-align: center;
         }
    </style>
    <body>
        <h1>User Search</h1>		  
            <div>
                <form action="http://localhost:8080/Project/searchServlet" method="POST">
                    <input type="text" name="search" placeholder="user...">
                    <input type="submit" name="searchbtn" value="Search">
                </form>
            </div>
    </body>
</html>