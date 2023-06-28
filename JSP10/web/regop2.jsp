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
            int r=Integer.valueOf(request.getParameter("t1"));
            String n=request.getParameter("t2");
            int fe=Integer.valueOf(request.getParameter("t3"));
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System","aniket");
            Statement st=con.createStatement();
            int f=st.executeUpdate("insert into student values('"+r+"','"+n+"','"+fe+"')");
            
            out.println("<h1>Successfully inserted a Record</h1>");
     
      
     con.close();
     }catch(SQLException a){}
     catch(ClassNotFoundException b){ }
     
     %>
                  
    

