<%-- 
    Document   : Signuphandler
    Created on : 21-Feb-2022, 11:03:57 pm
    Author     : PRIYESH JAISWAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*,java.lang.Class"%>
<%
String id=request.getParameter("name");
String pa=request.getParameter("email");
String na=request.getParameter("phone");
String co =request.getParameter("password");
if("".equals(id)||"".equals(pa)||"".equals(na)||"".equals(co))
{    response.sendRedirect("Signup.jsp?msg=blank");}
else    {
    try{        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","priyesh","pri786");
        String qry="insert into test_project values(?,?,?,?)";
       PreparedStatement prestmt=con.prepareStatement(qry);
       prestmt.setString(1,id);
       prestmt.setString(2,pa);
       prestmt.setString(3,na);
       prestmt.setString(4,co);
      prestmt.executeUpdate();
      con.close();
      prestmt.close();
       out.print("Thanks for Registration");
       %><a href="index.html">GoBack</a><%     }
    catch(Exception 
e)
            { out.println(e); } }%>
