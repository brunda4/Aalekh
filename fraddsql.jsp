<%-- 
    Document   : fraddsql
    Created on : 2 Nov, 2017, 5:36:23 PM
    Author     : brunda
--%>

<%@page import="java.util.regex.Pattern"%>
<%@page import="java.util.regex.Matcher"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Upload frame</title>
    </head>
    <body>
         <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%String fid=request.getParameter("fid");
        String image=request.getParameter("fimg");
        image=image.replaceAll(Pattern.quote("\\"),Matcher.quoteReplacement("\\\\"));
        String name=request.getParameter("name");
        String type=request.getParameter("type");
        String size=request.getParameter("size");
        String price=request.getParameter("cost");
        String colours=request.getParameter("color");
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=con.createStatement();
        st.executeUpdate("insert into frame values('"+fid+"','"+name+"','"+size+"','"+type+"','"+price+"','"+colours+"','"+image+"')");
        String Query="select * from frame";
        PreparedStatement psm=con.prepareStatement(Query);
        ResultSet rs=psm.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("uframe.jsp");
        }
        else
        {
            out.println("error in registration");
        }
        
        %>
    </body>
</html>


