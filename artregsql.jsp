<%-- 
    Document   : register
    Created on : 4 Oct, 2017, 7:56:43 PM
    Author     : brunda
--%>

<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.Matcher"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register artist</title>
    </head>
    <body>
         <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%String username=request.getParameter("uname");
        String password=request.getParameter("pwd");
        String fname=request.getParameter("fname");
        String mname=request.getParameter("mname");
        String lname=request.getParameter("lname");
        String dob=request.getParameter("dob");
        String email=request.getParameter("email");
        String age=request.getParameter("age");
        String image=request.getParameter("Img");
        image=image.replaceAll(Pattern.quote("\\"),Matcher.quoteReplacement("\\\\"));
        String profession=request.getParameter("prof");
        String description=request.getParameter("desc");
        String gender=request.getParameter("gender");
        String country=request.getParameter("country");
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=con.createStatement();
        st.executeUpdate("insert into artist values('"+username+"','"+password+"','"+fname+"','"+mname+"','"+lname+"','"+dob+"','"+email+"',"+age+",'"+country+"','"+image+"','"+profession+"','"+description+"','"+gender+"')");
        String Query="select * from artist";
        PreparedStatement psm=con.prepareStatement(Query);
        ResultSet rs=psm.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("artlogin.jsp");
        }
        else
        {
            out.println("error in registration");
        }
        
        %>
    </body>
</html>
