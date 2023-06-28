<%-- 
    Document   : fact
    Created on : 03-Nov-2022, 8:46:51 am
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
       int fact=1;
       for(int i=1;i<=a;i++)
       {
       fact=fact*i;
       }
       
      
        out.print(fact);
       %>
       <h1 align="center"><form>Result:<input type="text" value=<%=  fact  %>></form>    <!-- expression tag --> 
               
    </body>
</html>
