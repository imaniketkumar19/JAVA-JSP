<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>LOGIN PAGE</title>
    </head>
    
    <%
        try
        {
            String u= request.getParameter("username");
            String p= request.getParameter("password");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","aniket");
            Statement st=con.createStatement();
            int f=st.executeUpdate("insert into studentdetails values('"+u+"','"+p+"')");
            
            out.println("<h1>Successfully Created </h1>");
     
      
     con.close();
     }catch(SQLException a){}
     catch(ClassNotFoundException b){ }
     
     %>
                  
    

