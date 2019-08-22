<!DOCTYPE html>

<% 
    if(session.getAttribute("mail")==null )
    {
        response.sendRedirect("login.html");
    }
    

    

    
    %>
<html>
    <head>
        <title>Booking Form</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/mycss.css">
     <!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
     -->   
      <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <style>
            body {
                  background: url('image/rajgir.jpg') no-repeat center center fixed;
                  -webkit-background-size: cover;
                  -moz-background-size: cover;
                  -o-background-size: cover;
                  background-size: cover;
                }

                .panel-default {
                  opacity: 0.9;
                  margin-top:30px;
                }
                .form-group.last { margin-bottom:0px; }t { margin-bottom:0px; }
        </style>
        
        
        
        
        
    </head>
    <body>
        
        
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
                            <li><a href="login.html" >Registration /LOGIN</a></li>
                            <li><a href="contact.jsp" >Contact</a></li>
			</ul>
		</div>

	</div>
</section>
        
        
        
        
        
        <div class="container">
    <div class="row">
        <div class="col-md-5 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-login"></span>Booking-Registration</div>
                <div class="panel-body">
                    <form action="booking" method="post" class="form-horizontal well">

                        <fieldset>
                            <div class="form-group">
                              <label class="col-md-4 control-label" for="textinput">Name</label>  
                              <div class="col-md-8">
                                  <input id="textinput" name="name" placeholder="Enter your name" class="form-control input-md" type="text">
                                </div>
                            </div>

                            <div class="form-group">
                              <label class="col-md-4 control-label" for="textinput">Address</label>  
                              <div class="col-md-8">
                                  <input id="textinput" name="address" placeholder="Enter your address" class="form-control input-md" type="text">
                                </div>
                            </div>

                            <div class="form-group">
                              <label class="col-md-4 control-label" for="textinput">Contact Detail</label> 
                              <div class="col-md-8">
                                  <input id="textinput" name="mobile" placeholder="Enter your contact detail" class="form-control input-md" type="text">
                                </div>
                            </div>

                            <div class="form-group">
                              <label class="col-md-4 control-label" for="textinput">EMail</label> 
                              <div class="col-md-8">
                                  <input id="textinput" name="email" placeholder="Enter your e-mail address" class="form-control input-md" type="email">
                                </div>
                            </div>

                            <div class="form-group">
                              <label class="col-md-4 control-label" for="textinput">No of persons</label> 
                              <div class="col-md-8">
                                  <input id="textinput" name="person" placeholder="Enter no.of person" class="form-control input-md" type="number">
                                </div>
                            </div>
                            
                            
                            <div class="form-group">
                              <label class="col-md-4 control-label" for="textinput">Date Of Tour</label> 
                              <div class="col-md-8">
                                  <select id="selectbasic" name="date" class="form-control input-medium">
                                      <option>20/1/2017</option>
                                      
                                  </select>
                                </div>
                            </div>
                            

                            <div class="form-group">
                              <label class="col-md-4 control-label" for="textinput">Destination</label> 
                              <div class="col-md-8">
                                  <select id="selectbasic" name="destination" class="form-control input-medium">
                                      <option>Gaya</option>
                                      <option>Pawapuri</option>
                                      <option>Rajgir</option>
                                  </select>
                                </div>
                            </div>

                            <div class="form-group">
                              <label class="col-md-4 control-label" for="radios">Rent for</label>
                              <div class="col-md-8 row"> 
                                <label class="radio-inline col-md-2" for="radios-0">
                                    <input name="trent" id="radios-0" value="tour" checked="checked" disabled="" type="checkbox">
                                  Tour
                                </label> 
                                <label class="radio-inline col-md-2" for="radios-1">
                                  <input name="hrent" id="radios-1" value="hotel" type="checkbox">
                                  Hotel
                                </label>
                                  <label class="radio-inline col-md-2" for="radios-1">
                                  <input name="crent" id="radios-2" value="cabr" type="checkbox">
                                  Cab
                                </label>
                                <label class="radio-inline col-md-2" for="radios-2">
                                  <input name="brent" id="radios-3" value="bus" type="checkbox">
                                  Bus
                                </label>
                              </div>
                            </div>

                            <div class="form-group">
                              <label class="col-md-4 control-label" for="textinput">Any Query ?</label>  
                              <div class="col-md-8">
                                  <input id="textinput" name="query" placeholder="Enter your query" class="form-control input-md" type="text">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class=" control-label"></div>
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-primary btn-block">BOOK Now</button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        </div>
        </div>
         
         <script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
    </body>
</html>