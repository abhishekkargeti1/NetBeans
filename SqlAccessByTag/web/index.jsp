<%-- 
    Document   : index
    Created on : 05-Jul-2024, 11:57:00 am
    Author     : abhis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Database table</title>
    </head>
    <body>
        <h1>All user are :</h1>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/login" user="root" password="1808" var="ds"></sql:setDataSource>
        <sql:query dataSource="${ds}" var="rd">select * from Registration_Form;</sql:query>
        <table border="1px">
            <tr>
                <td>id</td>
                <td>First name</td>
                <td>Middle name</td>
                <td>Last name</td>
                <td>Address</td>
                <td>Gender</td>
                <td>Phone_Number</td>
                <td>Email</td>
                <td>Password</td>
            </tr>
        <c:forEach items="${rd.rows }" var="row">
            <tr>
                <td><c:out value="${row.id}"></c:out></td>
                <td><c:out value="${row.Firstname}"></c:out></td>
                <td><c:out value="${row.Middlename}"></c:out></td>
                <td><c:out value="${row.Lastname}"></c:out></td>
                <td><c:out value="${row.Address}"></c:out></td>
                <td><c:out value="${row.Gender}"></c:out></td>
                <td><c:out value="${row.Phonenumber}"></c:out></td>
                <td><c:out value="${row.email}"></c:out></td>
                <td><c:out value="${row.Password}"></c:out></td>
            </tr>
        </c:forEach>
        </table>
    </body>
</html>
