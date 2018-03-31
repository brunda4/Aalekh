<%-- 
    Document   : cb
    Created on : 7 Oct, 2017, 7:04:38 PM
    Author     : brunda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>preferences</title>
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
        position:absolute;
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
                    <li><a class="last">Art Preferences</a></li>
                      </ul>
            </div>
            </div>
        <div id="content">
       	  	<div class="scroll">
        	  <div class="scrollContainer">
                      <div class="panel" id="home"></br>
		<h2>Select any three art preferences</h2>		
<form method="get" action="cbl.jsp" >
        <label>UserID:&nbsp</label><input type="text" name="uname" placeholder="Username" required>
</br></br>
        <input type="checkbox" name="domain" value="g011">Abstract Art</br>
         <p>Abstract art is art that does not attempt to represent an accurate depiction of a visual reality but instead use shapes, colors, forms and gestural marks to achieve its effect </p>
</br></br>
<input type="checkbox" name="domain" value="g012">Surrealism</br>
<p>A twentieth-century literary, philosophical and artistic movement that explored the workings of the mind, championing the irrational, the poetic and the revolutionary</p>
</br></br>
<input type="checkbox" name="domian" value="g013">Conceptual Art</br>
<p>Conceptual art is art for which the idea (or concept) behind the work is more important than the finished art object. It emerged as an art movement in the 1960s and the term usually refers to art made from the mid-1960s to the mid-1970s.</p>
</br></br>
<input type="checkbox" name="domain" value="g014">Pop art</br>
<p>Pop art is an art movement that emerged in the 1950s and flourished in the 1960s in America and Britain, drawing inspiration from sources in popular and commercial culture. Different cultures and countries contributed to the movement during the 1960s and 70s</p>
</br></br>
<input type="checkbox" name="domain" value="g015">Photorealism</br>
<p>Photorealism is a painting style that emerged in Europe and the USA in the late 1960s, characterised by its painstaking detail and precision</p>
</br></br>
<input type="checkbox" name="domain" value="g016">Hyperrealism</br>
<p>The term hyper-realism appeared in the early 1970s to describe a resurgence of particularly high fidelity realism in sculpture and painting at that time</p>
</br></br>
<input type="checkbox" name="domain" value="g017">minimalism</br>
<p>Minimalism is an extreme form of abstract art developed in the USA in the 1960s and typified by artworks composed of simple geometric shapes based on the square and the rectangle</p>
</br></br>
<input type="checkbox" name="domain" value="g018">Futurism</br>
<p>Futurism was an Italian art movement of the early twentieth century that aimed to capture in art the dynamism and energy of the modern world</p>
</br></br>
<input type="checkbox" name="domain" value="g019">Impressionism</br>
<p>Impressionism developed in France in the nineteenth century and is based on the practice of painting out of doors and spontaneously ‘on the spot’ rather than in a studio from sketches. Main impressionist subjects were landscapes and scenes of everyday life</p>
</br></br>
<input type="checkbox" name="domain" value="g010">Fauvism</br>
<p>Fauvism is the name applied to the work produced by a group of artists (which included Henri Matisse and André Derain) from around 1905 to 1910, which is characterised by strong colours and fierce brushwork</p>
</br></br>
<input type="checkbox" name="domain" value="g021">Expressionism</br>
<p>Expressionism refers to art in which the image of reality is distorted in order to make it expressive of the artist’s inner feelings or idea</p>
</br></br>
<input type="checkbox" name="domain" value="g022">Cubism</br>
<p>Cubism was a revolutionary new approach to representing reality invented in around 1907–08 by artists Pablo Picasso and Georges Braque. They brought different views of subjects (usually objects or figures) together in the same picture, resulting in paintings that appear fragmented and abstracted</p>
</br></br>
<input type="checkbox" name="domain" value="g023">Eastern Style</br>
<p>Asian style of arts such as Indian ,Chinese,Japanese etc.,</p>
</br></br>
<input type="checkbox" name="domain" value="g020">Others
</br></br>
</br></br>
<input type="submit" value="Register">
<input type="reset" value="clear">
</form>
</div>                     </div>
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


