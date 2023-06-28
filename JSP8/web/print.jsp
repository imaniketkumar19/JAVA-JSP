<%-- 
    Document   : print
    Created on : 03-Nov-2022, 8:43:02 am
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
       for(int i=1;i<=5;i++)
        out.print("<h3><br>"+msg1+"<br></h3");
       %>
               
    </body>
</html>
