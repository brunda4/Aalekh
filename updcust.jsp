<%-- 
    Document   : updcust
    Created on : 1 Nov, 2017, 3:59:54 PM
    Author     : brunda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
    </head>
    <body>
         <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%String userid=request.getParameter("uid");
        String password=request.getParameter("pwd");
        String fname=request.getParameter("fname");
        String mname=request.getParameter("mname");
        String lname=request.getParameter("lname");
        String dob=request.getParameter("dob");
        String a1=request.getParameter("add");
        String city=request.getParameter("city");
        String state=request.getParameter("state");
        String country=request.getParameter("country");
        String zip=request.getParameter("zip");
        String phno=request.getParameter("ph");
        String email=request.getParameter("em");
        String gender=request.getParameter("gen");
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=con.createStatement();
        st.executeUpdate("update customer set password='"+password+"',firstname='"+fname+"',middlename='"+mname+"',lastname='"+lname+"',dob='"+dob+"',address='"+a1+"',city='"+city+"',state='"+state+"',country='"+country+"',zipcode='"+zip+"',phno='"+phno+"',email='"+email+"',gender='"+gender+"' where userid='"+userid+"'");
        String Query="select * from customer";
        PreparedStatement psm=con.prepareStatement(Query);
        ResultSet rs=psm.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("ucust.jsp");
        }
        else
        {
            out.println("error in registration");
        }
        
        %>
    </body>
</html>
