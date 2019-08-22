<%-- 
    Document   : Aorder
    Created on : 1 Jun, 2017, 11:24:42 PM
    Author     : Nitish Aryan
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="control.ConnectDB"%>
<%@page import="java.sql.Connection"%>
<% 
    if(session.getAttribute("mail")==null )
    {
        response.sendRedirect("login.html");
    }
    

    

    
    %>
    


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/admin.css">
       
        <link rel="stylesheet" href="css/myc.css">
    
        <title>AddPackages | Admin</title>
        <style>
            .card-view{
                padding-right: 12px; 
                padding-bottom: 12px;
            }
            #d5:hover{
                box-shadow: 2px 2px 2px ;
                
            }
            
        </style>
        <style>
            @media(min-width:768px){
            #page-wrapper{
                margin-left:230px;}
            body{
                width:80%;
            }
            
            }
            @media(max-width:767px){
            #page-wrapper{
                margin-top:20px; }
            
            #page-wrapper .inbox-head h1{
                margin-top: 50px;
                padding: 10px;
            }
            
            
            
            }
            
            
            
            
            
            @media(max-width:420px){
            table th , tr{
                font-size: 65%;
            }
            }
            
            
            #a1{
                width:100%;text-align: left;padding: 5px; mergin-right:2px; white-space: normal;
            }
            button{
                padding: 5px;
            }
            
            
            table th{
                color: white;
                background-color: black;
            }
            table th , tr{
                text-align:center;
                word-break: break-all;
            }
            table th , tr td{
                padding:5px;
                
            }
            
            table tr:hover{
                cursor: pointer;
                background-color: mintcream;
                
            }
            
            
        </style>
    </head>
    <body >
        
         <%@include file="Header Admin.jsp" %>
         
         
         <div id="page-wrapper" style="padding-top:5px;  margin-top:20px; " >
              <div class="inbox-head" style="background: url(image/6.jpg) ; padding: 40px;margin-bottom: 5px; ">
                          <h1 style="color:windowframe; text-align: center;">Added PACKAGES</h1>
                          
                      </div>
        
             
             
             
               <div >
                   
                   
                   <div class="row"> 
                   
                       <%    
                       
                                Connection con;
                    con=ConnectDB.connect();
                    Statement st=con.createStatement();
                                String phl;
                                ResultSet   rs,rs1;
                                rs=st.executeQuery("select * from addp ");
                              
                              Boolean b;
                              b=rs.next();
                              String s;
                              do
                              {
      
                       
                       
                       %>
                       
                       <div class="col-sm-5 col-xs-12 col-md-5 col-lg-6   ">
                       <div class="card-view"><% s="image/" +rs.getString("p1");  %>
                    <div class="card card-inverse card-info"  id="d5" style="background-color: white;">
                        <img class="card-img-top col-md-12" src="<%=s%>" height="100" weight="100">
                        <div class="card-block">
                            <h4 class="card-title"><%=rs.getString("tourname")%></h4>
                            <div class="card-text">
                                Tour Price: <%=rs.getString("tprice")%>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button class="btn btn-info btn-sm" style="width:100%;">See Detail</button>
                        </div>
                    </div>
                </div>
                            </div>
                            
                            <% }while(rs.next()); %>
        
                   
                   
                   
                   
            
            
            
            
            <div class="col-xs-6"style="padding:10px;">
            
            <button data-toggle="modal" data-target="#squarespaceModal" class="btn btn-primary center-block">Add Package</button>
            </div>
            </div>
            
            
            



<!-- line modal -->
<div class="modal fade" id="squarespaceModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog">
	<div class="modal-content">
		<div class="modal-header" style="background-color:black;">
			<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true" style="color:white;">×</span><span class="sr-only">Close</span></button>
			<h3 class="modal-title" id="lineModalLabel" style="color:white;">My Packages</h3>
		</div>
		<div class="modal-body">
			
            <!-- content goes here -->
			<form action="addp" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <label for="exampleInputEmail1" >Tour Name</label>
                <input type="text" class="form-control" required="" name="name"  placeholder="Enter Tour Name">
              </div>
                <div class="form-group col-md-4">
                <label for="exampleInputEmail1" >Tour ID</label>
                <input type="text" class="form-control" required="" name="idk"  placeholder="Enter Tour Id">
              </div>
              <div class="form-group col-md-4">
                <label for="exampleInputPassword1">Day Of Tour</label>
                <input type="Text" class="form-control" required="" name="dayy"  placeholder="Enter Day">
              </div>
                 
                <div class="form-group col-md-4 ">
                <label for="exampleInputPassword1">Date Of Tour</label>
                <input type="Text" class="form-control" required="" name="date"  placeholder="Enter Date">
              </div>
                <div class="form-group col-md-4">
                <label for="exampleInputPassword1">Price Of Tour </label>
                <input type="Text" class="form-control" required="" name="trent"  placeholder="Enter Tour Rent">
              </div>
                <div class="form-group col-md-4">
                <label for="exampleInputPassword1">Hotels Rent</label>
                <input type="Text" class="form-control" required="" name="hrent"  placeholder="Enter Hotels Rent">
              </div>
                <div class="form-group col-md-4">
                <label for="exampleInputPassword1">Cab Rent</label>
                <input type="Text" class="form-control" required="" name="crent" placeholder="Enter Car Rent">
              </div>
                <div class="form-group col-md-4">
                <label for="exampleInputPassword1">Bus Rent</label>
                <input type="Text" class="form-control" required="" name="brent" placeholder="Enter Bus Rent">
              </div>
                <div class="form-group col-md-4">
                <label for="exampleInputPassword1">Seats</label>
                <input type="Text" class="form-control" required="" name="seat"  placeholder="Total No of Person">
              </div>
                <div class="form-group col-md-4">
                <label for="exampleInputPassword1">Tour Start</label>
                <input type="Text" class="form-control" required="" name="source"  placeholder="Enter Source ">
              </div>
                
              <div class="form-group">
                <label for="exampleInputFile">Add Photos</label>
                  <div style="border:1px solid rgb(131,131,131); padding:1px;">
                <input type="file"  name="p1" required="" id="exampleInputFile">
                <input type="file" name="p2" required="" id="exampleInputFile">
                <input type="file" name="p3" required="" id="exampleInputFile"></div>
              </div>
                
               
                <div class="form-group">
                <label for="exampleInputPassword1">ABOUT DESTINATION/TOUR</label>
                <input type="Text"  name="about" class="form-control" required="" id="exampleInputPassword1" >
              </div>
                
            <!--  <div class="checkbox">
                <label>
                  <input type="checkbox"> Check me out
                </label>
              </div>
              <button type="submit" class="btn btn-default">Submit</button>   -->
            <div class="modal-footer">
			<div class="btn-group btn-group-justified" role="group" aria-label="group button">
				<div class="btn-group" role="group">
					<button type="button" class="btn btn-default" data-dismiss="modal"  role="button">jjj</button>
				</div>
			
				<div class="btn-group" role="group">
					<button type="submit" id="saveImage" class="btn btn-default btn-hover-green" data-action="save" role="button">Save</button>
				</div>
			</div>
		</div>
            </form>

		</div>
		
	</div>
  </div>
</div>
             
             

              
             
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

                <div class="col-md-8 text-justify" id="image-gallery-caption">
                    This text will be overwritten by jQuery
                </div>

                <div class="col-md-2">
                    <button type="button" id="show-next-image" class="btn btn-default">Next</button>
                </div>
            </div>
        </div>
    </div>
</div>
         
         
         
         
         
         
         
       
             <script src="js/jquery.js"></script>
           <!--  <script src="js/bootstrap.min.js"></script> -->
            <script src="js/package.js"></script> 
             
        
         
         
        
    </body>
</html>
