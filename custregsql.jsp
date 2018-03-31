<%-- 
    Document   : custregsql
    Created on : 6 Oct, 2017, 10:22:56 PM
    Author     : brunda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register Customert</title>
    </head>
    <body>
         <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%String userid=request.getParameter("uuname");
        session.setAttribute("cr",userid);
        String password=request.getParameter("ppwd");
        String fname=request.getParameter("fname");
        String mname=request.getParameter("mname");
        String lname=request.getParameter("lname");
        String dob=request.getParameter("dob");
        String a1=request.getParameter("address1");
        String city=request.getParameter("city");
        String state=request.getParameter("state");
        String country=request.getParameter("country");
        String zip=request.getParameter("zip");
        String phno=request.getParameter("phno");
        String email=request.getParameter("email");
        String gender=request.getParameter("gender");
        String dom[]=request.getParameterValues("domain");
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=con.createStatement();
        st.executeUpdate("insert into customer values('"+userid+"','"+password+"','"+fname+"','"+mname+"','"+lname+"','"+dob+"','"+a1+"','"+city+"','"+state+"','"+country+"','"+zip+"','"+phno+"','"+email+"','"+gender+"')");
        String Query="select * from customer";
        PreparedStatement psm=con.prepareStatement(Query);
        ResultSet rs=psm.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("cb.jsp");
        }
        else
        {
            out.println("error in registration");
        }
        
        %>
    </body>
</html>
