<%-- 
    Document   : delexh
    Created on : 1 Nov, 2017, 5:11:52 PM
    Author     : brunda
--%>

<%@page language="java"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
int no=Integer.parseInt(id);
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
String query = "select * from exhibition where exh_no='"+no+"'";
Statement st = conn.createStatement();
st.executeUpdate("DELETE FROM exhibition WHERE exh_no='"+no+"'");
out.println("Record is deleted successfully");
}
catch(Exception e){}
%>
