<%-- 
    Document   : checkoutcheck
    Created on : 3 Nov, 2017, 1:58:32 PM
    Author     : brunda
--%>

<%@page contentType="text/html"
        pageEncoding="UTF-8"%>
<html>
    <head>
        <title>jsp connection</title>
        
    </head>
    <body>
        <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%String name=request.getParameter("name");
        String address=request.getParameter("address");
        String city=request.getParameter("city");
        String state=request.getParameter("state");
        String postalCode=request.getParameter("postalCode");
        String country=request.getParameter("country");
        String email=request.getParameter("email");
        String nameOnCard=request.getParameter("nameOnCard");
        String creditCardType=request.getParameter("creditCardType");
        String creditCardNumber=request.getParameter("creditCardNumber");
        session.setAttribute("ccn",creditCardNumber);
       
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=con.createStatement();
        st.executeUpdate("insert into checkout(name,address,city,state,postalCode,country,email,nameOnCard,creditCardType,creditCardNumber) values('"+name+"','"+address+"','"+city+"','"+state+"',"+postalCode+",'"+country+"','"+email+"','"+nameOnCard+"','"+creditCardType+"',"+creditCardNumber+")");
        String Query="select * from checkout";
        PreparedStatement psm=con.prepareStatement(Query);
        ResultSet rs=psm.executeQuery();
        if(rs.next())
        {
            
            response.sendRedirect("ShowConfirmation.jsp");
            

        }
        else
        {
            out.println("error");
        }
        
        %>
    </body>
</html>
