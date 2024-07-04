<%-- 
    Document   : index
    Created on : 02-Jul-2024, 10:18:27 am
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            int num1 = 20;
            int num2= 0;
        %>
        <%
            int division = num1/num2;
        %>
        <h1>Division = <%= division%></h1>
    </body>
</html>
