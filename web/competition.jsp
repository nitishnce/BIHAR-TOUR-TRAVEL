<%-- 
    Document   : competition
    Created on : 3 Jun, 2017, 1:20:18 PM
    Author     : Nitish Aryan
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Competition</title>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/mycss.css">
    <link rel="stylesheet" href="css/mycs.css">
    </head>
    <body style="background-color: grey;">
        
        <!-- Navigation section
================================================== -->
<section class="navbar navbar-fixed-top  q1" role="navigation" style="position:relative;">
	<div class="container q3" >

		<div id="p1">
			<button  class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
				
                <span  class="icon icon-bar"></span>
				<span  class="icon icon-bar"></span>
                <span  class="icon icon-bar"></span>
			</button>
                    <a href="index.html"><img  style="float:left;" class="img-responsive" src="images/logo/logo.png" class=" navbar-brand" /> </a>
		</div>
		<div class="collapse navbar-collapse q2" >
			<ul class="nav navbar-nav navbar-right">
            
				
                
                            <li><a href="newsfeed.jsp" >News Feed</a></li>
                            <li><a href="Package.jsp">Packages</a></li>
                            <li><a href="gallery.jsp">Gallery</a></li>
                            <li ><a href="competition.jsp"> Competition </a> <!--<ul  class="collapse navbar-collapse" > 
                    <li  ><a href="#" >Week of the Pic</a></li>
                    <li data-toggle="collapse" ><a href="#" >Month of the Pic</a></li></ul>   --></li>
                            <li><a href="ClientD.jsp" >Registration /LOGIN</a></li>
                            <li><a href="contact.jsp" >Contact</a></li>
			</ul>
		</div>

	</div>
</section>
        
        <div style=""
        <ul class="nav nav-tabs">
            
    <li class="active"><a data-toggle="tab" href="#home">Pick of the Week</a></li>
    <li><a data-toggle="tab" href="#menu1">Pick of the Month</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <div class="col-md-5 hoverable z-depth-2">
            <img class="img-responsive" src="image/gol.jpg">
            <h1 style="text-align: center">Winner</h1>

            <div class="container profile">
                <h4>Name:</h3>
                <h4>Address:</h3>
                <h4>Contact no:</h3>
                <h4>Location:</h3>
            </div>
        </div>
    </div>
    <div id="menu1" class="tab-pane fade">
      <div class="col-md-5 hoverable z-depth-2" style="margin: 0 , auto">
            <img class="img-responsive" src="image/gol.jpg">
            <h1 style="text-align: center">Winner</h1>

            <div class="container profile">
                <h4>Name:</h3>
                <h4>Address:</h3>
                <h4>Contact no:</h3>
                <h4>Location:</h3>
            </div>
        </div>
        
        <div class="col-md-5 hoverable z-depth-2">
            <img class="img-responsive" src="image/gol.jpg">
            <h1 style="text-align: center">Runner up</h1>

            <div class="container profile">
                <h4>Name:</h3>
                <h4>Address:</h3>
                <h4>Contact no:</h3>
                <h4>Location:</h3>
            </div>
        </div>
    </div>
    </div>
  </div>
</div>
        
        
        <script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
    </body>
</html>
