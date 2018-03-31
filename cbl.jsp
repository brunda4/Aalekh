<%-- 
    Document   : cbl
    Created on : 7 Oct, 2017, 6:59:19 PM
    Author     : brunda
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register artist</title>
    </head>
    <body>
         <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%    String dom[]=new String[20];
        String username=request.getParameter("uname");
        String domain[]=request.getParameterValues("domain");
        for(int i=0;i<=domain.length-1;i++)
        {
            dom[i]=domain[i];
        }
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=con.createStatement();
        st.executeUpdate("insert into art_preferences values('"+username+"','"+dom[0]+"','"+dom[1]+"','"+dom[2]+"')");
        String Query="select * from art_preferences";
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
