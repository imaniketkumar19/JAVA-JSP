<%-- 
    Document   : logout
    Created on : 03-Nov-2022, 9:02:06 am
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
session.invalidate();

response.sendRedirect("index.html");

%>
    </body>
</html>
