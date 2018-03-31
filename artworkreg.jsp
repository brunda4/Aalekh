<%-- 
    Document   : artworkreg
    Created on : 10 Oct, 2017, 8:13:50 PM
    Author     : brunda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Artwork Upload Page</title>
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

.scrollContainer div.panel {
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
                   <li> <a href="artpg.jsp">Home</a> </li>
                   <li><a href="artworkreg.jsp" class="selected">Upload artwork</a></li>             
                   <li><a href="aucset.jsp">Set Auction</a></li>
                   <li><a href="endbid.jsp">My Auction</a></li>             
                   <li><a href="exhset.jsp" >Set Exhibition</a></li>
                   <li> <a href="Aalekhhome.jsp" class="last">logout</a> </li>
               </ul>
            </div>
            </div>
          <div id="content">
       	  	<div class="scroll">
        	  <div class="scrollContainer">
                <div class="panel" id="home">
                    </br>	
                	<h2>Upload your Artwork</h2> 
<form method="get" action="artworksql.jsp" enctype="multipart/form-data" >
<label>ArtistID:&nbsp</label><input type="text" name="uname" placeholder="Enter your ID" required>
</br></br>
<label>Upload art work:&nbsp</label><input type="file" name="aimg" accept="image/*" required>
</br></br>
<label> ARTWORK NAME:&nbsp</label><input type="text" name="name" placeholder="Name your artwork" required>
</br></br>
<select name="type">
    <option>Type of your artwork </option>
    <option value="g011">Abstract Art</option>
    <option value="g010">Fauvism </option>   
    <option value="g012">Surrealism </option>    
    <option value="g013">Conceptual art</option> 
    <option value="g014">Pop art </option>         
    <option value="g015">Photorealism </option> 
    <option value="g016">Hyper realism </option>   
    <option value="g017">minimalism </option>      
    <option value="g018">Futurism </option>       
    <option value="g019">Impressionism</option> 
    <option value="g021">Expressionism </option> 
    <option value="g022">Cubism </option>          
    <option value="g023">Eastern</option>
    <option value="g020">Others </option> 
</select>
<label> Size:&nbsp</label><input type="text" name="size" placeholder="Inches" required>
</br></br>
<label>Price:&nbsp</label><input type="text" name="cost" placeholder=" Price" required>
</br></br>
<label> Number of copies:&nbsp</label><input type="text" name="no">
</br></br>
<label> Date:&nbsp</label><input type="date" name="udate">
</br></br>
<label> Discount:&nbsp</label><input type="text" name="dis">
</br></br>
<select name="frame">
    <option>Frame</option>
    <option value="f001">Floating frame </option>      
<option value="f002">Poster frame </option> 
<option value="f003">Alpha aluminium frame </option>
<option value="f004">Cirrus frame        </option>
<option value="f005">Cosmopolitan frame       </option> 
<option value="f006">Double matted fineline frame</option>
<option value="f007">Fineline frame         </option>
<option value="f008">Prisma frame       </option>
<option value="f009">Senza frame         </option> 
<option value="f010"> Tuscany florentine frame </option>
<option value="f011">Vivid frame              </option> 
<option value="f012"> Emerald cut inward frame  </option>
<option value="f013">Moda frame             </option> 
<option value="f014">Spinner frame           </option>
<option value="f015">7 piece wall kit        </option>
<option value="f016">852 smooth arched embossed frame </option>
<option value="f017">Stretched canvas floater frame   </option>
<option value="f018">137 wide flat smooth frame     </option>
<option value="f019"> Barnwood finish frame        </option>
<option value="f020">Adison frame                 </option>
<option value="f021"> Arcadia frame             </option>
<option value="f022">Casa frame                 </option> 
<option value="f023">Mesa frame                   </option>
<option value="f024"> Stratton frame               </option>
<option value="f025">Tuscan frame</option>
</select>
</br></br>
<label>Description:&nbsp</label><input type="text" name="desc" placeholder="Describe artwork">
</br></br>
<input type="submit" value="Upload">
<input type="reset" value="clear">
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
    </body>
</html>
