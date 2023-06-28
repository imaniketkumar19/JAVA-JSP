<%-- 
    Document   : jspSend
    Created on : 03-Nov-2022, 8:38:01 am
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
       String op=request.getParameter("t3");
       if(op.equals("Add"))
        out.print("Sum="+(a+b));
       if(op.equals("Sub"))
        out.print("Sub="+(a-b));
        if(op.equals("Mul"))
        out.print("Mul="+(a*b));
       %>
               
    </body>
</html>
