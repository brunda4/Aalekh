<%-- 
    Document   : bidsave
    Created on : 3 Nov, 2017, 10:50:03 AM
    Author     : brunda
--%>


<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.Matcher"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Upload art</title>
    </head>
    <body>
         <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%String cid=(String)session.getAttribute("name");
        String bid=request.getParameter("amt");
        String artid=request.getParameter("id");
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=con.createStatement();
        st.executeUpdate("insert into auctiondetail values('"+artid+"','"+cid+"','"+bid+"')");
        String Query="select * from auctiondetail";
        PreparedStatement psm=con.prepareStatement(Query);
        ResultSet rs=psm.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("custpg.jsp");
        }
        else
        {
            out.println("error in registration");
        }
        
        %>
    </body>
</html>


