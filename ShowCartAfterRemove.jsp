<%-- 
    Document   : ShowCartAfterRemove
    Created on : 3 Nov, 2017, 2:05:18 PM
    Author     : brunda
--%>
<%@page import="java.net.URLEncoder"%>
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
                   <li><a href="Checkout.jsp" >BUY NOW </a></li>
                <li><a href="/Trial/ShowProductCatalog1.jsp" >Artwork Catalog</a></li>
                <li><a href="/Trial/ShowProductCatalog.jsp"  class="last">Frames Catalog</a></li>
                 </ul>
                    </div>
            </div>
<div id="content">
       	  	<div class="scroll">
        	  <div class="scrollContainer">
                <div class="panel" id="home"> 
   
<%@ page language="java" import="examples.cart.*,java.util.*,java.text.*" %>

<%-- Show the header with the shopping cart image --%>
<table border="0">
<tr><td><img src="pics/Screenshot_20171109-202650.png" width="50" height="50"><td><h1>Shopping Cart</h1>
</table>

<%
// Get the current shopping cart from the user's session.
    ShoppingCart cart = (ShoppingCart) session.getAttribute("ShoppingCart");
double total=0;
// If the user doesn't have a shopping cart yet, create one.
    if (cart == null)
    {
        cart = new ShoppingCart();
        session.setAttribute("ShoppingCart", cart);
    }

// Get the items from the cart.
    Vector items = cart.getItems();

// If there are no items, tell the user that the cart is empty.
    if (items.size() == 0)
    {
        out.println("<h3>Your shopping cart is empty.</h3>");
    }
    else
    {
%>
<%-- Display the header for the shopping cart table --%>
<br>
<table border=4>
<tr><th>Description</th><th>Quantity</th><th>Price</th></tr>
<%

        int numItems = items.size();

// Get a formatter to write out currency values.
        NumberFormat currency = NumberFormat.getCurrencyInstance();

        for (int i=0; i < numItems; i++)
        {
            Item item = (Item) items.elementAt(i);

// Print the table row for the item.
            out.print("<tr><td>");
            out.print(item.description);
            out.print("</td><td>");
           out.print(item.orderQuantity);
            out.print("</td><td>");
            out.print(currency.format(item.price));

 total=total+(item.price*item.orderQuantity);
// Print out a link that allows the user to delete an item from the cart.
            out.println("</td><td>"+
                "<a href=\"/Trial/RemoveItemServlet?item="+
                i+"\">Remove</a></td>");
             String addItemURL =
            "/Trial/AddToShoppingCartServlet?"+
            "productCode="+URLEncoder.encode(item.getProductCode(),"UTF-8")+
            "&description="+URLEncoder.encode(item.getDescription(),"UTF-8")+
            "&quantity="+URLEncoder.encode(""+item.getQuantity(),"UTF-8")+
            "&price="+URLEncoder.encode(""+item.getPrice(),"UTF-8");%>

             <td><a href="<%=addItemURL%>">Add</a></td></tr>
            <%
        }
    }
%>

</table>
</br>
<tr><b><%out.print("Total cost="+total);%></b></tr>
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
