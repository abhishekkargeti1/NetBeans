<%-- 
    Document   : index
    Created on : 04-Jul-2024, 3:22:25 pm
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
        <!--1. out tag-->
        <!--2. set tag-->
        <c:set var="num1" value="23" scope="application"></c:set>
        <h1><c:out value="${num1}"></c:out></h1>
        <%--<c:remove var="num1"></c:remove>--%>
        <h1><c:out value="${num1}">This is default value </c:out></h1>

            <hr>

        <c:if test="${num1==23}">
            <h1>This is true</h1>
        </c:if> 
        <hr>

        <c:choose>
            <c:when test="${num1>0}">
                <h1>Number is positive</h1>
            </c:when>
            <c:when test="${num1<0}">
                <h1>Number is negative </h1>
            </c:when>
            <c:otherwise>
                <h1>Number is zero</h1>
            </c:otherwise>
        </c:choose>

        <hr>
        
        <c:forEach var="j" begin="0" end="10">
            <h1>J is <c:out value="${j}"></c:out></h1>
        </c:forEach>
            
            <hr>
        <%--<c:redirect url="https://www.google.com"></c:redirect>--%>
    </body>
</html>
