<%-- 
    Document   : gallery
    Created on : 3 Jun, 2017, 12:53:06 PM
    Author     : Nitish Aryan
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="control.ConnectDB"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gallery</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/mycss.css">
    <link rel="stylesheet" href="css/mycs.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        
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
        
        
          <div class="row">

    <div class="col-lg-12">
        <h1 class="page-header" style="text-align: center; color: white;">Gallery</h1>
        
        <% 
            
            Connection con;
                    con=ConnectDB.connect();
                    Statement st=con.createStatement();
                                String phl;
                                ResultSet   rs,rs1;
                                rs=st.executeQuery("select * from gallery ");
                              String p;
                            Boolean b;int f;
                              b=rs.next();
                              do
                              {
            
            
            %>
        
    
            <div class="col-lg-3 col-md-4 col-xs-12 col-sm-6  thumb">
                <% f=rs.getInt("likes"); %>
                <%  p="image/gallery/"+rs.getString("Photo"); %>
                <a class="thumbnail" href="#" data-image-id="<%=rs.getString("PhotoId")%>" data-toggle="modal" data-title="<%=rs.getString("Description")%>" data-caption=" Likes :<%=f%>" data-image="<%=p%>" data-target="#image-gallery">
                
                <img class="img-responsive" src="<%=p%>" alt="Short alt text">
            </a>
        </div>
          <% }while(rs.next());%>
</div>


<div class="modal fade" id="image-gallery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="image-gallery-title"></h4>
            </div>
            <div class="modal-body">
                <img id="image-gallery-image" class="img-responsive" src="">
            </div>
            <div class="modal-footer">

                <div class="col-md-2">
                    <button type="button" class="btn btn-primary" id="show-previous-image">Previous</button>
                </div>
                <div class="col-md-2" style="padding: 0px;">
                <img src="pic/3.jpg" height="20" width="20" > 
                </div>
                <div class="col-md-6 text-justify" id="image-gallery-caption">
                     
                </div>
                

                <div class="col-md-2">
                    <button type="button" id="show-next-image" class="btn btn-default">Next</button>
                </div>
            </div>
        </div>
    </div>
</div>
        
        
        
        
        <script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modal.js"></script>
    </body>
</html>
