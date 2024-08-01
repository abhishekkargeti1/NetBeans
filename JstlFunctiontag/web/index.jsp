<%-- 
    Document   : index.jsp
    Created on : 05-Jul-2024, 11:31:20 am
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Function page </h1>
        <c:set var="name" value="Abhishek"></c:set>
        <h1><c:out value="${name}"></c:out></h1>
        <h1>Length of name is <c:out value="${fn:length(name)}"></c:out></h1>
        <h1>Name is  <c:out value="${fn:toLowerCase(name)}"></c:out></h1>
        <h1>Name is  <c:out value="${fn:toUpperCase(name)}"></c:out></h1>
    </body>
</html>