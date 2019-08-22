<%-- 
    Document   : Package
    Created on : 3 Jun, 2017, 1:32:58 PM
    Author     : Nitish Aryan
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Package</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/mycss.css">
    <link rel="stylesheet" href="css/myc.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        

    <style>
            .card-view{
                padding: 12px;
            }
            #d5:hover{
                box-shadow: 2px 2px 2px ;
                
            }
        </style>
    
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
        
        <h3 style="background-color: white; color:black; font-family: Times New Roman; height: 35px; text-align: center;">Packages</h3>
        
        <div class="col-sm-6 col-xs-12 col-md-6 col-lg-4 mt-4 " >
            <div class="card-view">
                <div class="card card-inverse card-info " id="d5" style="background-color: white;">
                        <img class="card-img-top col-md-12" src="image/gol.jpg">
                        <div class="card-block">
                            <h4 class="card-title">Rajgir</h4>
                            <div class="card-text">
                                Price: 2500 /-.
                            </div>
                        </div>
                        <div class="card-footer">
                            <a href="packaged.jsp"> <button class="btn btn-info btn-sm" style="width:100%;">See Detail</button> </a>
                        </div>
                    </div>
                </div>
        </div>
        
        
        
        
        
        
        
        
        
        <script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
        
    </body>
</html>
