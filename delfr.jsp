<%-- 
    Document   : delfr
    Created on : 1 Nov, 2017, 9:01:15 PM
    Author     : brunda
--%>

<%@page language="java"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
String query = "select * from frame where fid='"+id+"'";
Statement st = conn.createStatement();
st.executeUpdate("DELETE FROM frame WHERE fid='"+id+"'");
out.println("Record is deleted successfully");
}
catch(Exception e){}
%>

