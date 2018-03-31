<%-- 
    Document   : ShowProductCatalog
    Created on : 3 Nov, 2017, 2:09:04 PM
    Author     : brunda
--%>

<%@ page language="java" import="examples.cart.*,java.net.*,java.text.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aalekh</title>
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


.scrollContainer div.panel id.home {
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
	color: #fff;
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

.btn_more a {
	display: inline-block;
	font-weight: bold;
	color: #000;
	font-size: 12px;
	padding: 2px 15px 2px 0;
	text-decoration: none;
}

.btn_more a:hover {
	padding-right: 20px;
	text-decoration: none;
}

.col_340 { width: 340px; } 
.col_400 { width: 400px; }
.col_280 { width: 280px; }

table{
    color:#333;
    font-family:Helvetica,Arial,sans-serif;
    width:550px;
    border-collapse:collapse;
    border-spacing:0;
}
td,th{
    border:1px solid transparent;
    height:30px;
    transition:all 0.3s;
}
th{
    background:#DFDFDF;
    font-weight:bold;
}
td{
    background:#FAFAFA;
    text-align:center;
}
        </style>
    </head>
   <body bgcolor="#ffffff">
        <div id="slider">
    <div id="tooplate_wrapper">
    	
        <div id="tooplate_sidebar">
        	
            <div id="header">
            	<h1><a href="#">Aalekh</a></h1>
            </div>

            <div id="menu">
               <ul class="navigation">
                    <li><a href="/Trial/DisplayShoppingCart.jsp" >View Shopping Cart</a></li>
                <li><a href="/Trial/ShowProductCatalog1.jsp" >Artwork Catalog</a></li>
                <li><a href="/Trial/ShowProductCatalog.jsp"  class="last">Frames Catalog</a></li>
                </ul>
                    </div>
            </div>
<div id="content">
       	  	<div class="scroll">
        	  <div class="scrollContainer">
                <div class="panel" id="home">       
<%
// Initialize the array of available products.
    Item[] catalog = new Item[] {
        new Item("X-1", "Floating Frame", 650.00, 1),
        new Item("GWU-123876345-27B/6",
            "Poster Frame", 1853.00, 1),
        new Item("BCT-12", "Alpha Aluminium Frames", 1634.00, 1),
        new Item("EZ-1", "Cirrus Frames",
            2154.00, 1),
        new Item("PF-101", "Cosmopolitian Frame", 2503.00, 1),
        new Item("LOD-7", "Double Matted Fineline Frame", 1725.00, 1),
        new Item("MJ-34","Fineline Frame",1559.00,1),
    new Item("DF-25","Prisma Frame",1046.00,1),
    new Item("BF-66","Senza Frame",1046.00,1),
    new Item("JB-55","Tuscany Florentine Frame",2675.00,1),
    new Item("JK-15","Emerald Cut Inward Frame",1079.00,1),
    new Item("KS-18","Moda Frame",1046.00,1),
    new Item("VJ-48","Spinner Frame",1330.00,1),
    new Item("HJ-26","7 Piece Wall Kit Frame",2943.00,1),
    new Item("DF-34","852 Smooth Arched Embossed Frame",2179.00,1),
    new Item("BD-25","Stretched Canvas Floater Frame",2228.00,1),
     new Item("KH-65","137 Wide Flat Smooth Frame",2670.00,1),
    new Item("LD-56","Barnwood Finish Frame",2051.00,1),
    new Item("KN-83","Adison Frame",740.00,1),
     new Item("JD-26","Arcadia Frame",2464.00,1),
    new Item("KA-25","Casa Frame",2105.00,1),
    new Item("MS-62","Mesa Frame",2248.00,1),
    new Item("NV-59","Stratton Frame",778.00,1),
    new Item("VJ-69","Tuscan Frame",2367.00,1)
   
   
   
   
    };

%>


<p>
<h1>Available Frames</h1>
<table border="1">
<tr><th>Description</th><th>Quantity</th><th>Price</th></tr>
<%

// Get a currency formatter for showing the price.
    NumberFormat currency = NumberFormat.getCurrencyInstance();

    for (int i=0; i < catalog.length; i++)
    {
        Item item = catalog[i];

// Create the URL for adding the item to the shopping cart.
        String addItemURL =
            "/Trial/AddToShoppingCartServlet?"+
            "productCode="+URLEncoder.encode(item.getProductCode(),"UTF-8")+
            "&description="+URLEncoder.encode(item.getDescription(),"UTF-8")+
            "&quantity="+URLEncoder.encode(""+item.getQuantity(),"UTF-8")+
            "&price="+URLEncoder.encode(""+item.getPrice(),"UTF-8");
%>
<tr><td><%=item.getDescription()%></td><td><%=item.getQuantity()%>
    </td><td><%=item.getPrice()%></td>
<td><a href="<%=addItemURL%>">Add to Cart</a></td></tr>
<%
    }
%>
</table>
</div>
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