<%-- 
    Document   : contact
    Created on : 3 Jun, 2017, 1:05:40 PM
    Author     : Nitish Aryan
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Any Query/Contact us</title>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/mycss.css">
    <link rel="stylesheet" href="css/client.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    </head>
    <body style="background-color: grey; padding-top:0px;">
        
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
        
        
        <!-- Begin Help -->
                <div class="jumbotron jumbotron-sm">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 col-lg-12">
                                <h1 class="h1">Contact us <small>Feel free to contact us</small></h1>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="well well-sm">
                                <form action="query" method="post">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="name"> Name</label>
                                                <input type="name" class="form-control" id="name" placeholder="Enter name" required="required" />
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Email Address</label>
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <span class="fa fa-envelope"></span>
                                                    </span>
                                                    <input type="email" name="email" class="form-control" id="email" placeholder="Enter email" required="required" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="subject">Subject</label>
                                                <select id="subject" name="subject" class="form-control" required="required">
                                                    <option value="na" selected="">Choose One:</option>
                                                    <option value="service">General Customer Service</option>
                                                    <option value="suggestions">Suggestions</option>
                                                    <option value="product">Product Support</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="name">Message</label>
                                                <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required" placeholder="Message"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">Send Message</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <form>
                                <legend><span class="fa fa-globe"></span> Our office</legend>
                                <address>
                                    <strong>KNect Tourism</strong><br>
                                    5th Flore , Supoo Bhawan<br>
                                    Basant Bihar, New Delhi<br>
                                    <abbr title="Phone">P:</abbr>
                                    (+91) 8271237935 
                                </address>
                                <address>
                                    <strong>Email:</strong><br>
                                    <a href="mailto:#" style="color:#23527c;">knect_tourism@gmail.com</a>
                                </address>
                            </form>
                        </div>
                    </div>
                </div>
        
        
        
        <script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
    </body>
</html>
