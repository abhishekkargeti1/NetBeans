<%-- 
    Document   : newjsp
    Created on : 01-Jul-2024, 3:53:59 pm
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="background: red;color:black;padding:20px ">
            <h1>Hello World!</h1>
            <br>
            <p>Hello Everyone Welcome to our website </p>
           
            <%=
                new Date().toString()
            %>
        </div>
    </body>
</html>
