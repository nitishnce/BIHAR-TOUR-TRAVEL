<%-- 
    Document   : packaged
    Created on : 3 Jun, 2017, 2:13:47 PM
    Author     : Nitish Aryan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Package Detail</title>
        
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
        
        <link rel="stylesheet" href="css/mycss3.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/mycss.css">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <style>
        @media(max-width:700px)
        {
            table tr td h3 , h4 ,h1{
                font-size: 100%; 
            }
            #v5{
                font-size: 80%; 
            }
        }
        
    </style>
    
    
    
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
        
        
        
        
        
        <section class="jk-slider" style="margin-top: -20px;    border: 3px solid rgb(36,36,36);">
    <div id="carousel-example " class="carousel slide" data-ride="carousel" >
  <ol class="carousel-indicators">
    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example" data-slide-to="1"></li>
    <li data-target="#carousel-example" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner">
  
    <div class="item active">
    <div class="hero">
       
      </div>
      <div class="overlay"></div>
     <a href="#"><img src="image/r3.jpg" style="width:100%;"></a>
      	
    </div>
  <div class="item">
  	<div class="hero">
      
        
      </div>
      
       <div class="overlay"></div>
       <a href="#"><img src="image/r1.jpg" style="width:100%;"></a>
      
    </div>
    <div class="item">
    	<div class="hero">
     
      </div>
      	<div class="overlay"></div>
      <a href="#"><img src="image/r2.jpg" /></a>
      
    </div>
  </div>

  
</div>
        </section>
        
    
        
        <div class="container" >
            <table style="text-align: center; margin-bottom: 10px;">
                <tr>
                    <td colspan="2"><h3>Destination Tour:</h3></td><td>  <h1> Rajgir</h1> </td> </tr>
                <tr><td colspan="2"> <h3>About:</h3></td> <td><h4 id="v5"> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged</h4>
                    </td ></tr><tr><td colspan="2"><h3>Day Of Tour:</h3></td> <td> <h4> 3</h4> </td></tr>
                <tr><td colspan="2">  <h3>Date Of Journey:</h3></td><td> <h4> 12/07/2015</h4></td></tr>
                <tr>  <td colspan="2"> <h3>No. Of Available Person:</h3></td> <td><h4> 93(Hurry Up!!)</h4></td></tr>
                <tr><td colspan="2"> <h3>Tour Price: </h3></td><td> <h4> 1700 /-</h4> </td></tr>
                <tr><td colspan="2"> <h3>Car Rent: </h3></td><td> <h4> 2500</h4></td> </tr>
                <tr><td colspan="2">  <h3>Bus Rent: </h3></td><td> <h4> 1500</h4></td></tr>
                <tr><td colspan="3"> <a href="book.jsp"> <button class="btn btn-success" style="width:60%;"> Book Now</button></a></td></tr>
            </table>
        </div>
        
        
        
        
        <script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
    </body>
</html>
