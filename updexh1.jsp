<%-- 
    Document   : updexh1
    Created on : 1 Nov, 2017, 7:16:39 PM
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
        <%String aid=request.getParameter("aid");
         String id=request.getParameter("eno");
         int no=Integer.parseInt(id);
        String loc=request.getParameter("loc");
        String noa=request.getParameter("noa");
        String sdate=request.getParameter("sdate");
        String edate=request.getParameter("edate");
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=con.createStatement();
        st.executeUpdate("update exhibition set location='"+loc+"',aid='"+aid+"',noarts='"+noa+"',startdate='"+sdate+"',enddate='"+edate+"' where exh_no='"+no+"'");
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


