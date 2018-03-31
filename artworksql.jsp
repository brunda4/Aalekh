<%-- 
    Document   : artworksql
    Created on : 10 Oct, 2017, 9:32:59 PM
    Author     : brunda
--%>


<%@page import="java.util.concurrent.Callable"%>
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
        <%String userid=request.getParameter("uname");
        String image=request.getParameter("aimg");
        image=image.replaceAll(Pattern.quote("\\"),Matcher.quoteReplacement("\\\\"));
        String name=request.getParameter("name");
        String type=request.getParameter("type");
        String size=request.getParameter("size");
        String price=request.getParameter("cost");
        String noc=request.getParameter("no");
        int no=Integer.parseInt(noc);
        String date=request.getParameter("udate");
        String dis=request.getParameter("dis");
        String f=request.getParameter("frame");
        String desc=request.getParameter("desc");
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        CallableStatement myStmt=con.prepareCall("{call new_procedure(?)}");
        myStmt.setString(1,type);
        myStmt.execute();
        myStmt.close();
        Statement st=con.createStatement();
        Statement st1=con.createStatement();
        ResultSet rs1=null;
        int count=0;
        rs1=st1.executeQuery("select count(art_id) as cnt from artwork");
        if(rs1.next()){
            count=rs1.getInt("cnt");
        }
        String artid="AW"+userid+count;
        st.executeUpdate("insert into artwork values('"+artid+"','"+userid+"','"+image+"','"+name+"','"+type+"','"+size+"','"+price+"','"+noc+"','"+date+"','"+f+"','"+dis+"','"+desc+"')");
        String Query="select * from artwork";
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

