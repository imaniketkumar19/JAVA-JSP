<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>LOGIN PAGE</title>
    </head>
    <body>
     <%
        try
        {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","aniket");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from STUDENTDETAILS");
    
  
    String u= request.getParameter("username");
    String p=request.getParameter("password");
    int flag=0;
    while(rs.next())
    {
    if((rs.getString(1)).equals(u)&&(rs.getString(2)).equals(p))
      {
       flag=1;
       break;
       }
    } 
    
    if(flag==0)
     {
     
     out.print("<h1><font color='red'>LOGIN FAILED </font></h1>");   
     %>
        <jsp:include page="index.html" />
<%
    }
     else
     {
     
    out.print("<font color='green'>LOGIN SUCCESSFUL</font>");
     %>
     <jsp:include page="reg.html" />
    <%
      }
   
     con.close();
     }catch(SQLException a){}
     catch(ClassNotFoundException b){ }
     
     %>
                  
    </body>
</html>
