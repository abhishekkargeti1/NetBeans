<%-- 
    Document   : test
    Created on : 02-Jul-2024, 3:58:03 pm
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/Mylib" prefix="t"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello world</h1>
        <t:mytag></t:mytag>  
        <t:printTable number="23" color="red"></t:printTable> 
        <t:printTable number="100" color="green"></t:printTable> 
    </body> 
</html>
