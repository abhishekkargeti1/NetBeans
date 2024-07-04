<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random,java.util.Scanner" %>
<%@include file="newjsp.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        *{
            margin: 0;
            padding:0;        
        
        }
    </style>
    <body>
        <h1>Random Number:
        <%
        Random r1 = new Random();
        int num = r1.nextInt(14);
        
        
        
        %>
        <%=
             num
        %>
       </h1>
       
    </body>
</html>
