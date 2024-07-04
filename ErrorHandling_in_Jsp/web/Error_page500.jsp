<%-- 
    Document   : Error_page404
    Created on : 03-Jul-2024, 9:51:19 am
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>500 Error </title>
    </head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <body>
        <div class=" container text-center mt-3">
            <img src="image/images.jpeg" class="img-fluid">
            <h1 class="display-3 p-3">Something Went Wrong </h1>
            <h4><%System.out.println(exception);%></h4>
            <a class="btn btn-outline-primary mt-3" href="index.html">Home page</a> 
        </div>
    </body>
</html>
