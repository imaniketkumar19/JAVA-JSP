<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
          String u=request.getParameter("email");
          String p=request.getParameter("password");
          if(u.equals("abc") && p.equals("123"))
          {
          session.setAttribute("email", u);
          session.setAttribute("passwod", p);
          out.print("Successfully Logined<br>");
          %>
          <a href="logout.jsp">Click for Logout</a>
          <%
        }
        else
       {
        out.print(" Login failed<br>");
        %>
        <jsp:include page="index.html"></jsp:include>
        <%
       }

        %>
            
    </body>
</html>
