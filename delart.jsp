<%-- 
    Document   : delart
    Created on : 5 Nov, 2017, 2:16:09 PM
    Author     : brunda
--%>


<%@page language="java"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
Statement st = conn.createStatement();
String gid="";
Statement st1 = conn.createStatement();
ResultSet rs1=st1.executeQuery("select * from artwork where art_id='"+id+"'"); 
while(rs1.next())
{
    gid=rs1.getString("type");
}
CallableStatement myStmt=conn.prepareCall("{call del_procedure(?)}");
        myStmt.setString(1,gid);
        myStmt.execute();
        myStmt.close();
st.executeUpdate("DELETE FROM artwork WHERE art_id='"+id+"'");
out.println("Record is deleted successfully");
}
catch(Exception e){}
%>
