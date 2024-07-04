<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>First jsp page</h1>
        <%! 
            int a=50;
            int b = 10;
            public int doSum(){
                return a+b;
            }
            
            
        %>
        <%
            out.println(doSum());
        
        %>
        
<!--        <h1 style="color:red">Sum is <%= doSum()%></h1>
        <h1><%=a%></h1>-->
    </body>
</html>
