<%-- 
    Document   : taglib
    Created on : 02-Jul-2024, 9:51:24 am
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <hr>
        <c:set var="name" value="Abhishek"></c:set>
        <c:out value="${name}"></c:out>
        
        <c:if test="${3>2}">
            <h2>This is true block</h2>
        </c:if>
    </body>
</html>
