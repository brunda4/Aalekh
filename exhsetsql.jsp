<%-- 
    Document   : exhsetsql
    Created on : 29 Oct, 2017, 12:31:47 PM
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
        <%String aid=(String)session.getAttribute("name");
        String loc=request.getParameter("loc");
        String now=request.getParameter("now");
        String sdate=request.getParameter("sdate");
        String edate=request.getParameter("edate");
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=con.createStatement();
        Statement st1=con.createStatement();
        ResultSet rs1=null;
        int count=0;
        rs1=st1.executeQuery("select count(exh_no) as cnt1 from exhibition");
        if(rs1.next()){
            count=rs1.getInt("cnt1");
        }
        st.executeUpdate("insert into exhibition values('"+(count+1)+"','"+loc+"','"+aid+"','"+now+"','"+sdate+"','"+edate+"')");
        String Query="select * from exhibition";
        PreparedStatement psm=con.prepareStatement(Query);
        ResultSet rs=psm.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("artpg.jsp");
        }
        else
        {
            out.println("error in registration");
        }
        
        %>
    </body>
</html>


