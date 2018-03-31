<%-- 
    Document   : delcust
    Created on : 1 Nov, 2017, 4:19:06 PM
    Author     : brunda
--%>

<%@page language="java"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
String query = "select * from customer where userid='"+id+"'";
Statement st = conn.createStatement();
st.executeUpdate("DELETE FROM customer WHERE userid='"+id+"'");
out.println("Record is deleted successfully");
}
catch(Exception e){}
%>
