<%-- 
    Document   : add
    Created on : 03-Nov-2022, 8:36:10 am
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
       int a=Integer.valueOf(request.getParameter("t1"));
       int b=Integer.valueOf(request.getParameter("t2"));
       out.print("Sum="+(a+b));
       %>
               
    </body>
</html>
