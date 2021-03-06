<%-- 
    Document   : artreg
    Created on : 4 Oct, 2017, 8:21:05 PM
    Author     : brunda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Artist Registration Page</title>
        <script>
            function validate()
            {
            if(document.getElementById("pass").value.length!>6)
{
 alert("Please provide password with 6 or more characters!");
document.getElementById("pass").focus();
return false;
}
       return(true);     }
            </script>
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
    left: 20
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
                    <li><a href="artreg.jsp" class="selected">Artist</a></li>
                    <li><a href="custreg.jsp" class="last">User</a></li>
                </ul>
            </div>
       </div>
         <div id="content">
       	  	<div class="scroll">
        	  <div class="scrollContainer">
                      <div class="panel" id="home"></br>
<h2>Register</h2>   
                
<form method="get" action="artregsql.jsp" enctype="multipart/form-data" onsubmit="return(validate());" >
<label>UserID:&nbsp</label><input type="text" name="uname" placeholder="Username" required>
</br></br>
<label>PASSWORD:&nbsp</label><input id="pass" type="password" name="pwd" placeholder="password" required>
</br></br>
<label> FIRST NAME:&nbsp</label><input type="text" name="fname" placeholder="First name" required>
</br></br>
<label> MIDDLE NAME:&nbsp</label><input type="text" name="mname" placeholder="Middle name" >
</br></br>
<label>LAST NAME:&nbsp</label><input type="text" name="lname" placeholder=" Last name">
</br></br>
<label> Date of birth:&nbsp</label><input type="date" name="dob" placeholder="yyyy-mm-dd">
</br></br>
<label> Email:&nbsp</label><input type="email" name="email" placeholder="email@example.com" required>
</br></br>
<label> Age:&nbsp</label><input type="text" name="age" placeholder="in years">
</br></br>
<label>Image:&nbsp</label><input type="file" name="Img" accept="image/*">
</br></br>
<label> Profession:&nbsp</label><input type="text" name="prof" placeholder="occupation">
</br></br>
<label>Description:&nbsp</label><input type="text" name="desc" placeholder="describe self">
</br></br>
<label>Gender:<label></br></br>
<input type="radio" name="gender" value="male">male
</br></br>
<input type="radio" name="gender" value="female">female
</br></br>
<select name="country"><option>Nationality</option>
<option>India</option>
<option>Greece</option>
<option>France</option>
<option>Germany</option>
<option>Berlin</option>
<option>Singapore</option>
<option>Australia</option>
</select>
</br></br>
<input type="submit" value="Register">
<input type="reset" value="clear">
</form>
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
    </body>
</html>
   