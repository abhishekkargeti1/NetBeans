<%-- 
    Document   : op
    Created on : 02-Jul-2024, 11:07:50 am
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String num1 = request.getParameter("number1");
            String num2 = request.getParameter("number2");
            int a = Integer.parseInt(num1);
            int b = Integer.parseInt(num2);
            int c = a / b;
        %>
        <h1>Result is <%= c%></h1>
    </body>
</html>
