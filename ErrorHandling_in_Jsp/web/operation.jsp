<%-- 
    Document   : operation
    Created on : 03-Jul-2024, 9:45:12 am
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="Error_page500.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String num1= request.getParameter("number1");
            String num2= request.getParameter("number2");
            int value1=Integer.parseInt(num1);
            int value2=Integer.parseInt(num2);
            float result=(float)value1/value2;
        %>
        <h1>Result is <%=result%></h1>
    </body>
</html>
