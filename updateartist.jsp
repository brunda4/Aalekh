<%-- 
    Document   : updateartist
    Created on : 1 nov, 2017, 2:09:43 PM
    Author     : brunda
--%>

<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.Matcher"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
    </head>
    <body>
         <%@ page import="java.sql.*"%>
        <%String username=request.getParameter("aid");
        String password=request.getParameter("pwd");
        String fname=request.getParameter("fname");
        String mname=request.getParameter("mname");
        String lname=request.getParameter("lname");
        String dob=request.getParameter("dob");
        String email=request.getParameter("email");
        String age=request.getParameter("age");
        String image=request.getParameter("pic");
        image=image.replaceAll(Pattern.quote("\\"),Matcher.quoteReplacement("\\\\"));
        String profession=request.getParameter("pro");
        String description=request.getParameter("desc");
        String gender=request.getParameter("gen");
        String country=request.getParameter("country");
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=con.createStatement();
        st.executeUpdate("update artist set password='"+password+"',pic='"+image+"',profession='"+profession+"',description='"+description+"',gender='"+gender+"',middlename='"+mname+"',age='"+age+"',nationality='"+country+"',dob='"+dob+"',email='"+email+"',firstname='"+fname+"',lastname='"+lname+"',email='"+email+"' where aid='"+username+"'");
        String Query="select * from artist";
        PreparedStatement psm=con.prepareStatement(Query);
        ResultSet rs=psm.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("uartist.jsp");
        }
        else
        {
            out.println("error in registration");
        }
        
        %>
    </body>
</html>
