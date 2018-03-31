<%-- 
    Document   : updfr.jsp
    Created on : 2 Nov, 2017, 6:06:06 PM
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
        <%@ page import="javax.sql.*"%>
        <%String fid=request.getParameter("fid");
        String name=request.getParameter("name");
        String size=request.getParameter("size");
        String type=request.getParameter("type");
        String cost=request.getParameter("cost");
        String col=request.getParameter("col");
        String fimg=request.getParameter("fimg");
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=con.createStatement();
        st.executeUpdate("update frame set name='"+name+"',size='"+size+"',type='"+type+"',colors='"+col+"',fimage='"+fimg+"' where fid='"+fid+"'");
        String Query="select * from exhibition";
        PreparedStatement psm=con.prepareStatement(Query);
        ResultSet rs=psm.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("controlpanel.jsp");
        }
        else
        {
            out.println("error in registration");
        }
        
        %>
    </body>
</html>



