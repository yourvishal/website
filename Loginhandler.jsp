<%-- 
    Document   : Loginhandler
    Created on : 29-Dec-2021, 7:02:41 pm
    Author     : PRIYESH JAISWAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*" %>%>
<!DOCTYPE html>
<%String login=request.getParameter("email");
     String pass=request.getParameter("password");
     if("".equals(login)||"".equals(pass))
    response.sendRedirect("Login.jsp?msg=blank");
    else    {
    try
            {  boolean flag=false;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","priyesh","pri786");
     Statement stmt=con.createStatement();
     String qry="select * from test_project";
     ResultSet rs=stmt.executeQuery(qry);
     while(rs.next())
         { String dbpa=rs.getString("EMAIL");
         String dbco=rs.getString("PASSWORD");
         if(login.equals(dbpa) && pass.equals(dbco) )
             { flag=true; } }
        if(flag) { out.print("Successfully Login...."); }
        else { response.sendRedirect("Login.jsp?msg=error");} }
    catch(Exception e)  
      { out.println(e);}}

