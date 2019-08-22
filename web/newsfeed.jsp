<%-- 
    Document   : newsfeed
    Created on : 3 Jun, 2017, 11:49:53 AM
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
        
        <title>News Feed</title>
            <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/mycss.css">
    <link rel="stylesheet" href="css/mycs.css">
    
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <style>
         @media(max-width:640px){
             h1 a{
                 font-size: 40%;
                 word-break: break-all;
                 
                 
                 
             
         }
         
         
         }h1 a:hover{
             text-decoration: none;
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
        
        
        
        
         <h1 class="page-header" style="text-align: center; color: white;">News Feed</h1>
        <div class="container" style="padding:5px;">
    <div class="row" style="margin-left: 0px;">
        <div class="col-md-12 ">
            
             <%
                    Connection con;
                    con=ConnectDB.connect();
                    Statement st=con.createStatement();
                                String phl;
                                ResultSet   rs,rs1;
                                rs=st.executeQuery("select * from gallery ");
                              
                              Boolean b;
                              b=rs.next();
                              do
                              {
      
            %>
            <div class="box-item col-md-6">
                <div class="box-post">
                    
                    <h1 class="post-title">
                        <a href="#">
                            <%=rs.getString("Description")%>
                        </a>
                    </h1>
                    <span class="meta">
                        <span><i id="like" class="fa fa-heart"></i> <a id="like" href=""><%=rs.getInt("likes")%></a></span>
                    </span>
                </div>
                        <% String p="image/gallery/"+rs.getString("Photo"); %>
                <img src="<%=p%>" alt="City in the sky: world's biggest hotel to open in Mecca" 
                class="">        
            </div>
                <% }while(rs.next());%>

           
            
            

        </div>

        
    </div>

</div>
        
    <script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
        
        
    </body>
</html>
