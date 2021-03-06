<%-- 
    Document   : custpg
    Created on : 29 Oct, 2017, 12:50:55 PM
    Author     : brunda
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

.scrollContainer div.panel id.gallery {
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

/* gallery */
#gallery_container { 
	clear: both; 
	margin: 0; 
	padding: 0; 
} 

#gallery_container li {
	float: left;
	width: 170px;
	display: block; 
	padding: 0;
	margin: 0 15px 10px 0;
	font-size: 11px;
	color: #fff;
	text-align: center;
}

#gallery_container .odd { 
	margin: 0 0 10px 0; 
}

#gallery_container li img { 
	width: 160px; 
	height: 120px; 
	padding: 4px; 
	border: 1px dotted #333; 
	background: none; 
}
/* end of gallery */
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
                     <li><a href="DisplayShoppingCart.jsp">My cart</a></li>
                     <li><a href="paintings.jsp">Paintings</a></li>
                      <li><a href="artdis.jsp">Artist</a></li>
                      <li><a href="custbid.jsp">Auction</a></li>
                      <li><a href="exhdis.jsp">Exhibition</a></li>
                       <li><a href="frame.jsp">Frames</a></li>
                       <li><a href="Aalekhhome.jsp" class="last">Logout</a></li>
                
                </ul>
                    </div>
            </div>
         <div id="content">
       	  	<div class="scroll">
        	  <div class="scrollContainer">
                      <div class="panel" id="gallery"></br>
        	      	<h2>Our Gallery</h2>
        	      	<ul id="gallery_container">
						<li><a href="paintinfodis.jsp?id=Impressionism"><img src="pics/Screenshot_20171107-174743.png" alt="Image 01" /></a></li>
						<li class="odd"><a href="paintinfodis.jsp?id=Impressionism"><img src="pics/Screenshot_20171105-144917.png" alt="Image 02" /></a></li>
						<li><a href="paintinfodis.jsp?id=Futurism"><img src="pics/Screenshot_20171105-144837.png" alt="Image 03" /></a></li>
						<li class="odd"><a href="paintinfodis.jsp?id=surrealism"><img src="pics/Screenshot_20171105-143709.png" alt="Image 04" /></a></li>
						<li><a href="paintinfodis.jsp?id=minimalism"><img src="pics/Screenshot_20171105-144633.png" alt="Image 05" /></a></li>
						<li class="odd"><a href="paintinfodis.jsp?id=conceptual art"><img src="pics/Screenshot_20171105-140914.png" alt="Image 06" /></a></li>
						<li><a href="paintinfodis.jsp?id=abstract art"><img src="pics/Abstract Art1.png" alt="Image 07" /></a></li>
						<li class="odd"><a href="paintinfodis.jsp?id=cubism"><img src="pics/Screenshot_20171105-145159.png" alt="Image 08" /></a></li>
      	        	                        <li><a href="paintinfodis.jsp?id=Others"><img src="pics/Screenshot_20171105-145451.png" alt="Image 09" /></a></li>
						<li class="odd"><a href="paintinfodis.jsp?id=abstract art"><img src="pics/Screenshot_20171105-090211.png" alt="Image 10" /></a></li>
						
                        </ul>
      	      	</div> <!-- end of gallery -->
                  </div>
                </div>
         </div>
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
   