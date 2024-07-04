<%-- 
    Document   : error_page
    Created on : 02-Jul-2024, 10:25:26 am
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Something went wrong .....</title>
    </head>
    <style>
        *{
            padding: 0px;
            margin: 0px;
        }
    </style>
    <body>
        <div style='color:red;background: black;padding:20px;'>
        <h1>Something went wrong .....</h1>
            <br>
            <p><%= exception%></p>
        </div>
    </body>
</html>
