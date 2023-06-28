<%-- 
    Document   : jspSend
    Created on : 03-Nov-2022, 8:31:50 am
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
       String msg=request.getParameter("t1");
       out.print("<h3> My recieved data:"+msg+"</h3");
       %>
               
    </body>
</html>
