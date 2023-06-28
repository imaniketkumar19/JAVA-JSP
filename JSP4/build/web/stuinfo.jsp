<%-- 
    Document   : stuinfo
    Created on : 03-Nov-2022, 8:33:34 am
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
       String msg1=request.getParameter("t1");
       String msg2=request.getParameter("t2");
       String msg3=request.getParameter("t3");
       out.print("<h3> My recieved data:<br> Roll "+msg1+"<br>Name "+msg2+"<br>Fee "+msg3+"</h3");
       %>
               
    </body>
</html>
