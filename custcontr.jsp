<%-- 
    Document   : custcontr
    Created on : 14 Oct, 2017, 1:31:45 PM
    Author     : brunda
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
         <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%String userid=request.getParameter("uname");
        String password=request.getParameter("pwd");
        session.setAttribute("name",userid);
        try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=null;
        PreparedStatement pa=null;
        ResultSet rs=null;
        pa=con.prepareStatement("select * from customer where userid=? and password=?");
        pa.setString(1,userid);
        pa.setString(2,password);
        rs=pa.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("custpg.jsp");
        }
        else
        {
            out.println("No login");
        }
        }
        catch(Exception e){
            out.println(e);
        }
        
        
        %>
        </div>
    </body>
</html>

