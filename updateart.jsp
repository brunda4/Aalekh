<%-- 
    Document   : updateart
    Created on : 1 Nov, 2017, 8:46:07 PM
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
        <%String userid=request.getParameter("artid");
        String aid=request.getParameter("aid");
        String image=request.getParameter("img");
        image=image.replaceAll(Pattern.quote("\\"),Matcher.quoteReplacement("\\\\"));
        String name=request.getParameter("name");
        String type=request.getParameter("type");
        String size=request.getParameter("size");
        String price=request.getParameter("cost");
        String noc=request.getParameter("noc");
        String date=request.getParameter("du");
        String dis=request.getParameter("dis");
        String f=request.getParameter("fid");
        String desc=request.getParameter("desc");
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=con.createStatement();
        st.executeUpdate("update artwork set aid='"+aid+"',artimg='"+image+"',name='"+name+"',type='"+type+"',size='"+size+"',cost='"+price+"',no_copies='"+noc+"',date_upload='"+date+"',frameid='"+f+"',discount='"+dis+"',description='"+desc+"' where art_id='"+userid+"'");
        String Query="select * from artwork";
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

