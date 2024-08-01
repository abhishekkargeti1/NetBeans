<%-- 
    Document   : secondJsp
    Created on : 05-Jul-2024, 10:07:18 am
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is test page </h1>
       <h1><c:out value="${num1}"></c:out></h1>
       
    </body>
</html>
