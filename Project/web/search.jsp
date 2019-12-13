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
        <title>Search for users</title>
    </head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style> 
         div, h1 {
             text-align: center;
         }
    </style>
    <body>
        <jsp:include page="navbar.jsp" />
        <div class="container">
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
        </div>
        </div>
    </body>
</html>
