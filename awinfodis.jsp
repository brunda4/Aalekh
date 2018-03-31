<%-- 
    Document   : awinfodis
    Created on : 4 Nov, 2017, 7:39:42 PM
    Author     : brunda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Paintings</title>
        <style>
           /* 

Template 2024 Vertiwood

http://www.tooplate.com/view/2024-vertiwood

*/ 
#slider {
    position: relative;
	width: 100%;
}

#tooplate_wrapper {
	width: 800px;
	padding: 0 10px;
	margin: 0 auto;
}

#tooplate_sidebar {
	float: right;	
	width: 128px;
}

#header { 
	width: 208px;
	padding: 110px 10px 0;
	height: 93px;
	background: url("pics/tooplate_site_header.png") no-repeat top
}

#header h1 { 
	margin: 0; 
	padding: 0; 
}

#header h1 a { 
	display: block; 
	width: 160px; 
	height: 40px; 
	margin: 0 auto; 
	background:url("pics/tooplate_logo_1.png") top left no-repeat; 
	text-indent: -10000px; 
}

#menu {
	clear: both;
	width: 228px;
}

#content {
	float: center;
	margin-top: 60px;
	width: 1002px;
	height: 576px;	
	padding: 10px;
	background: url("pics/tooplate_main.png") no-repeat top left;
        background-size:750px;
}


.content_section {
	margin-bottom: 20px;
	padding-bottom: 20px;
	border-bottom: 1px dashed #666
}

.last_section {
	margin: 0;
	padding: 0;
	border: 0;
}

#footer {
	clear: both;
	width: 680px;
	padding: 0 60px;
	margin: 0 auto;
	text-align: right;
	color: #828282;
}

#footer a {
	color: #ccc;
}

.scroll {
    width: 600px;
    height: 476px;
    margin: 20px 80px 50px 50px;
    overflow: auto;
    overflow-x: hidden;
    position: relative;
    clear: left;
}

.scrollContainer div.panel id.home{
    width: 373px;
    height: 476px;
	overflow: hidden;
}

ul.navigation {
    list-style: none;
    margin: 0;
    padding: 0;
}

ul.navigation li {
    margin: 0;
	padding: 0;
}

ul.navigation a {
	display: block;
	width: 228px;
	height: 59px;
	font-size: 16px;
	font-weight: 700;
    text-decoration: none;
	text-align: center;
	color: #000;
	background: url("pics/tooplate_menu.png") no-repeat
}

ul.navigation a.last {
	height: 98px;
	background: url("pics/tooplate_menu_last.png") no-repeat top left;
}

ul.navigation a:hover, ul.navigation a.selected {
	color: #fff;
}

ul.navigation a:focus {
    outline: none;
}

.scrollButtons {
    position: absolute;
    top: 300px;
    cursor: pointer;
}

.scrollButtons.left {
    left: 0
}

.scrollButtons.right {
    right: 0
}

.hide {
    display: none;
}

body {
	margin: 0px;
	padding: 0px;
	color: #978a71;
	font-family: Tahoma, Geneva, sans-serif;
	font-size: 12px;
	line-height: 1.5em; 
	background-color: #181617;
	background-image: url("pics/tooplate_body.jpg");
	background-repeat: repeat;
}

a, a:link, a:visited { 
	color: #98610c; 
	text-decoration: none; 
}

a:hover { 
	text-decoration: underline; 
}

.orange {
	color: #C60;
}

.green {
	color: #399;
}

p { 
	margin: 0 0 15px 0; 
	padding: 0; 
}

img { border: none; }

h1, h2, h3, h4, h5, h6 { 
	color: #000; 
}

h1 { 
	font-size: 30px; 
	font-weight: normal; 
	margin: 0 0 20px 0; 
	padding: 5px 0; 
}

h2 { 
	font-size: 28px; 
	font-weight: normal; 
	padding-bottom: 20px; 
	margin: 0 0 20px 0; 
	font-weight: normal; 
	border-bottom: 1px dashed #000; 
}

h3 { 
	font-size: 20px; 
	margin: 0 0 15px 0; 
	padding: 0; 
	font-weight: normal;  
}

h4 { 
	font-size: 16px; 
	margin: 0 0 15px 0; 
	padding: 0; 
}

h5 { 
	font-size: 12px; 
	margin: 0 0 10px 0; 
	padding: 0; 
}

.cleaner { clear: both }
.h10 { height: 10px }
.h20 { height: 20px }
.h30 { height: 30px }
.h40 { height: 40px }
.h50 { height: 50px }
.h60 { height: 60px }

.float_l { float: left; }
.float_r { float: right; }

.image_wrapper { 
	display: inline-block; 
	border: 1px dashed #666; 
	padding: 4px; 
	margin-bottom: 10px; 
        width:180px;
        height:60;
}

.image_fl { 
	float: left; 
	margin: 3px 20px 0 0; 
}

.image_fr { 
	float: right; 
	margin: 3px 0 0 20px; 
}

blockquote { font-style: italic; margin: 0 0 0 10px;}
cite { font-weight: bold; color:#333; }
cite span { color: #333; }
em { color: #ab6700; }
 </style>
    </head>
    <body>
           <div id="slider">
    <div id="tooplate_wrapper">
    	
        <div id="tooplate_sidebar">
        	
            <div id="header">
            	<h1><a href="#">Aalekh</a></h1>
            </div>

            <div id="menu">
               <ul class="navigation">
                  <li><a href="artpro.jsp">My Profile</a></li>
                     <li><a href="paintings.jsp" class="selected">Paintings</a></li>
                      <li><a href="artdis.jsp">Artist</a></li>
                      <li><a href="custbid.jsp">Auction</a></li>
                      <li><a href="exhset.jsp">Exhibition</a></li>
                       <li><a href="frame.jsp">Frames</a></li>
                       <li><a href="Aalekhhome.jsp"class="last">Logout</a></li>
                </ul>
            </div>
            </div>
          <div id="content">
       	  	<div class="scroll">
        	  <div class="scrollContainer">
                      <div class="panel" id="home"></br>
                     <h2>ArtWork</h2>
         <%@ page import="java.sql.*"%>
        <%@ page import="javax.sql.*"%>
        <%String aid=request.getParameter("id");
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/trial","root","root");
        Statement st=null;
        Statement st1=null;
        Statement st2=null;
        Statement st3=null;
        ResultSet rs=null;
        ResultSet rs2=null;
        ResultSet rs1=null;
        ResultSet rs3=null;
            st=con.createStatement();
            st1=con.createStatement();
            st2=con.createStatement();
            st3=con.createStatement();
            String fname="";
            String mname="";
            String lname="";
            rs1=st1.executeQuery("select * from artwork where aid='"+aid+"'");
            while(rs1.next())
            {
               rs2=st2.executeQuery("select * from artist where aid='"+aid+"'");
               while(rs2.next())
               {
                fname=rs2.getString("firstname");
               mname=rs2.getString("middlename");
               lname=rs2.getString("lastname");
              }
              String artid=rs1.getString("art_id");
               String name=rs1.getString("name");
               String size=rs1.getString("size");
               String cost=rs1.getString("cost");
               String gid=rs1.getString("type");
               rs=st.executeQuery("select * from genre where gid='"+gid+"'");
            String tname="";
            while(rs.next())
            {
               tname=rs.getString("name");
            }
               String noc=rs1.getString("no_copies");
               String date=rs1.getString("date_upload");
               String fid=rs1.getString("frameid");
               rs3=st3.executeQuery("select * from frame where fid='"+fid+"'");
               String frname="";
               while(rs2.next())
               {
               frname=rs3.getString("name");
               }
               String dis=rs1.getString("discount");
               String des=rs1.getString("description");
               %>
               <img src="pics/<%=rs1.getString("artimg")%>" width="300" height="300"/></br>
               <%out.println("ArtID:"+artid);%></br>
               <%out.println("Name:"+name);%></br>
               <%out.println("Artist:"+fname+"\t"+mname+"\t"+lname);%></br>
               <%out.println("Type:"+tname);%></br>
               <%out.println("Size:"+size);%></br>
                 <%out.println("Cost:"+cost);%></br>
                 <%out.println("Number of copies:"+noc);%></br>
                 <%out.println("Date Upload:"+date);%></br>
                 <%out.println("Frame:"+frname);%></br>
                 <%out.println("Discount:"+dis);%></br>
                <%out.println(des);
                %></br><a href="ShowProductCatalog1.jsp">Buy</a></br></br>
                <% out.println("--------------------------------------------------------------------------------"); 
            
            }
        %> </div>
</div> <!-- end of scroll -->
		</div>
		
        <div class="cleaner"></div>
	</div>
    </div> <!-- end of content -->
	
     <div id="footer">
        </br></br><img src="pics/facebook.png" width="25" height="25" />
                    <img src="pics/flickr.png" width="25" height="25" />
                    <img src="pics/myspace.png" width="25" height="25" />
                    <img src="pics/twitter.png" width="25" height="25" />
                    <img src="pics/youtube.png" width="25" height="25" />
	</div>

</div>
</body>
</html>
    </body>
</html>
    </body>
</html>

