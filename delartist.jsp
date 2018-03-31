<%-- 
    Document   : delartist
    Created on : 1 Nov, 2017, 3:40:27 PM
    Author     : brunda
--%>

<%@page language="java"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
String query = "select * from artist where aid='"+id+"'";
Statement st = conn.createStatement();
st.executeUpdate("DELETE FROM artist WHERE aid='"+id+"'");
out.println("Record is deleted successfully");
}
catch(Exception e){}
%>
