<%-- 
    Document   : Aalekhhome
    Created on : 12 Oct, 2017, 6:08:17 PM
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
    overflow-y:hidden;
    position: relative;
    clear: left;
}

.scrollContainer div.panel {
    width: 500px;
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

.service_list { 
	margin: 0 0 0 15px; 
	padding: 0; 
	list-style: none; 
}

.service_list li { 
	margin: 0; 
	padding: 0; 
}

.service_list li a { 
	font-size: 13px; 
	display: block; 
	height: 25px; 
	margin-bottom: 10px; 
	padding-left: 40px; 
	text-decoration: none; 
}

.service_list li .service_one { 
	background: url("pics/onebit_08.png") center left no-repeat; 
}

.service_list li .service_two { 
	background: url("pics/onebit_11.png") center left no-repeat; 
}

.service_list li .service_three { 
	background: url("pics/onebit_17.png") center left no-repeat; 
}

.service_list li .service_four { 
	background: url("pics/onebit_21.png") center left no-repeat; 
}

.service_list li .service_five { 
	background: url("pics/onebit_12.png") center left no-repeat; 
}

.service_list li .service_six { 
	background: url("pics/onebit_19.png") center left no-repeat; 
}

#contact_form {  
	padding: 0; 
	width: 340px; 
}

#contact_form form { 
	margin: 0px; 
	padding: 0px; 
}

#contact_form form .input_field { 
	width: 240px; 
	padding: 5px; 
	color: #333; 
	background: #ffffff; 
	border: 1px solid #dddad6; 
	font-family: Verdana,Geneva,sans-serif;
    font-size: 12px;
	margin-top: 5px; 
}

#contact_form form label { 
	display: block; 
	width: 100px; 
	margin-right: 10px; 
	font-size: 13px; 
}

#contact_form form textarea { 
	width: 328px;  
	height: 80px; 
	padding: 5px;
	color: #333; 
	background: #ffffff; 
	border: 1px solid #dddad6; 
	font-family: Verdana,Geneva,sans-serif;
    font-size: 12px;
	margin-top: 5px; 
}

#contact_form form .submit_btn {
	margin: 5px 0px;
	padding: 5px 14px;
	background: #ffffff; 
	border: 1px solid #dddad6;
}

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
                    <li><a href="adminlogin.jsp" class="selected">Login</a></li>
                    <li><a href="artreg.jsp" >Register</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="#ser" >Our Services</a></li>
                    <li><a href="#gallery" >Gallery</a></li>
                    <li><a href="#contact" class="last">Contact Us</a></li>
                    </ul>
            </div>
            </div>
        <div id="content">
       	  	<div class="scroll">
        	  <div class="scrollContainer">
                <div class="panel" id="home">
				
                	<h2></br>Welcome to Aalekh</h2>   
                        <p><em>Aalekh is committed and invests in progress and change by promoting cultural and artistic evolution which can nowadays be expressed by art.</em></p>	           
                    <img src="pics/Screenshot_20171105-144935.png" alt="Image 01" class="image_wrapper image_fl" />             
                    <p>Aalekh aims at <em>making people appreciate,know and truly live Art </em> by promoting<em>young emerging artists</em> who represent future and artistic progress.</p>
                    <p>Aalekh is the best place to buy artwork online.Aalekh is the online resource for art collecting and education.Find the perfect original paintings,fine art and more.
                    <div class="cleaner h20"></div> 
					
                </div> <!-- end of home -->
				
        	    <div class="panel" id="about">
                	<h2>About Us</h2>
                    <img src="pics/Screenshot_20171107-175103.png" alt="Image 03" class="image_wrapper image_fl" />
                    <p><em>The Gallery is proud to present fine arts of the world.</em></p>
                    <p>Alongside our collection are regularly changing temporary exhibitions-<em>more than 30 each year</em>.The gallery has held solo and group art shows </p>
                    <p>Our artworks are sure to catch eyes and appreciation of discerning art collector or even first time art buyer.Apart from the artworks we also provide a varity of frames.Few of our artworks are auctioned by our registered artist themselves.</br></br>&nbsp&nbsp Our gallery was started with the aim of encouraging amateur artist and inspire.</p>
                    <div class="cleaner h20"></div>
                    </div> <!-- end of about us --><div class="panel" id="services">
                    <h2 id="ser">Our Services</h2>
                    <img src="pics/Screenshot_20171107-175056.png" alt="Image 02" class="image_wrapper image_fr" />
                    <p>The site is updated on basis by the gallery with information on new additions of Art and artists being communicated to our extreme buyrs and collectors on a periodic basis.Booked Artworks and Frames are shipped to the address provided by our customers</p>
                    <p>As part of giving back to the society-A part of the sale proceeds from this site goes towards Curing of Child Cancer.</p>
                    <div class="cleaner h20"></div>
                    
      	      	</div> <!-- end of services -->
				
        	  	<div class="panel" id="gallery">
        	      	<h2>Our Gallery</h2>
        	      	<ul id="gallery_container">
						<li><a href="#"><img src="pics/Screenshot_20171107-174743.png" alt="Image 01" /></a></li>
						<li class="odd"><a href="#"><img src="pics/Screenshot_20171107-174806.png" alt="Image 02" /></a></li>
						<li><a href="#"><img src="pics/Screenshot_20171107-174819.png" alt="Image 03" /></a></li>
						<li class="odd"><a href="#"><img src="pics/Screenshot_20171107-174856.png" alt="Image 04" /></a></li>
						<li><a href="#"><img src="pics/Screenshot_20171107-175001.png" alt="Image 05" /></a></li>
						<li class="odd"><a href="#"><img src="pics/Screenshot_20171107-175012.png" alt="Image 06" /></a></li>
						<li><a href="#"><img src="pics/Screenshot_20171107-175342.png" alt="Image 07" /></a></li>
						<li class="odd"><a href="#"><img src="pics/Screenshot_20171107-175451.png" alt="Image 08" /></a></li>
      	        	</ul>
      	      	</div> <!-- end of gallery -->
				
        	    <div class="panel" id="contact">
                    <h2>Contact Information</h2>
                    <h5>Company Name</h5>
                    224-448 Suspendisse velit nisi,<br />
                    Duis consequat tempus, 10880<br />
                    Cras sit amet ipsum sit
                    <div class="cleaner h30"></div>
                    <div id="contact_form">
                      	<form method="post" name="contact" action="#">
					  
							<label for="author2">Name:</label><input type="text" id="author2" name="author" class="required input_field" />
							<div class="cleaner h10"></div>
							
							<label for="email">Email:</label><input type="text" id="email" name="email" class="validate-email required input_field" />
							<div class="cleaner h10"></div>
							<label for="text">Message:</label><textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
							<div class="cleaner h10"></div>
							
							<input type="submit" class="submit_btn float_l" name="submit" id="submit" value="Send" />
							<input type="reset" class="submit_btn float_r" name="reset" id="reset" value="Reset" />
						
                    	</form>
						
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