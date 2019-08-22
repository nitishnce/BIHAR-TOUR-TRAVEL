<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="control.ConnectDB"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<% 
    if(session.getAttribute("mail")==null )
    {
        response.sendRedirect("login.html");
    }
    String check=session.getAttribute("admin")+"";
        if(check.equals("admin")){
        response.sendRedirect("Ahome.jsp");
        }

    

    
    %>



<html lang="en">
<head>
<title>Client | Kect Tourism</title>

    <link rel="stylesheet" href="css/client.css">
     <link rel="stylesheet" href="css/myc.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link rel="stylesheet" href="css/mycs.css">
    
    <style>
            .card-view{
                padding: 12px;
            }
            #d5:hover{
                box-shadow: 2px 2px 2px ;
                
            }
        </style>
   
   <style>
            
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
   
    
    
    
    
    
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous"> 
   <style>
       table{
           border: 1px solid black;
       }
       
       
       table tr td{
           padding-left: 5px;
       }
       @media(max-width:1200px)and(min-width:990px){
         .page-header{  margin-top:84px;
         height:10px;}
       }
       
       @media(max-width:650px){
       #q2 {
           font-size:150%;
           
       }
       #f4{
           font-size: 100%;
       }
       #q3 {
           display: none;
           
       }
       
       #settings div table th , tr td{
           font-size:15px;
           
           
           
       }
       
       
       
       }
       
       
       
     .modal-header-primary {
	color:#fff;
    padding:9px 15px;
    border-bottom:1px solid #eee;
    background-color: #428bca;
    -webkit-border-top-left-radius: 5px;
    -webkit-border-top-right-radius: 5px;
    -moz-border-radius-topleft: 5px;
    -moz-border-radius-topright: 5px;
     border-top-left-radius: 5px;
     border-top-right-radius: 5px;
}
       
       
       
       
       
       
       
       
       
       
   </style>
       
   
</head>
<body>











<div class="dashboard">
    <div class="well" style="text-align: center; margin-bottom:10px;">
        <a href="index.html"><img src="images/logo/logo.png"  height="50" weight="80"   ></a>
    <h2 id="f4">Welome to Knect Tourism</h2>
    <h4 style="color:#1abc9c;" id="f4">A Unit of Bihar Travel Agency</h4>
    
    </div>
    <div class="row">
        <div class="col-md-12  " >
            
            <ul class="dashboard-tabs" >
                
                <li class="active">
                    <a href="#profile" class="btn" aria-controls="profile" role="tab" data-toggle="tab">
                        <span class="fa fa-home" id="q2" ></span>
                        <h4 id="q3">Home</h4>
                    </a>
                </li>
                <li>
                    <a href="#statistics" class="btn" aria-controls="statistics" role="tab" data-toggle="tab">
                        <span  id="q2" class="fa fa-road"></span>
                        <h4 id="q3">Tour Package</h4>
                    </a>
                </li>
                <li>
                    <a href="#donate" class="btn" aria-controls="donate" role="tab" data-toggle="tab">
                        <span id="q2"class="fa fa-camera"></span>
                        <h4 id="q3">Ur Photo</h4>
                    </a>
                </li>
                <% String pic="image/"+ session.getAttribute("pic") ; %>
                <li style="padding-top: 10px;">
                    <a href="#settings" class="btn" aria-controls="settings" role="tab" data-toggle="tab">
                        <!--<span id="q2" class="fa fa-user"></span>  --> <img src="<%=pic%>" class="img-circle" height="45" width="45"> 
                        <h4 id="q3">Profile</h4>
                    </a>
                </li>
                <li>
                    <a href="logout" class="btn" aria-controls="help" role="tab" >
                        <span id="q2"class="fa fa-power-off"></span>
                        <h4 id="q3">Logout</h4>
                    </a>
                </li>
            </ul>
        </div>
        <div class="tab-content  container">
            <div role="tabpanel" class="tab-pane profile-pane active " id="profile">
                <div >
                    <div class="col-md-12 col-sm-12 col-xs-12 l5">
                        
                        <h1>Hello, <%= session.getAttribute("name")  %></h1>
                        <div class="header">
                            <h4>Notification</h4>   
                        </div>
                        <div class="content" >
                           
                           <table class="table table-inbox table-hover" >
                           <tbody>
                               
                                 
                                
                               
                            <tr>
                                   <td class="view-message ">
                                  <!--     <form action="#" method="post">  <button class="btn "  style="text-align: left; white-space: normal; width: 100%; "  type="submit" id="qw" title="Click For View Notification.." name="message" value="kjnvdskjnvdskn dsfcndsk sdkcnds"> <span class="glyphicon glyphicon-envelope"  aria-hidden="true"></span> <b> rahul  </b> has Intrested in your <b>rajgir </b> Site and You Got A Message.. <span style="float: right; padding-right: 5%; "> 22/5/2017 </span></button></form>
                                   --><h3 style="background:#0d172e; color:white;  text-align:center;padding:10px;">You haven't  Any Notificattion yet. </h3>
                                   
                                   </td>
                               </tr>
                               
                     
                        
                              
                            </tbody>  
                            
                        </table>
                            
                            
                            
                            
                            
                        </div>
                    </div>
                </div>
            </div>
            
            <div role="tabpanel" class="tab-pane" id="statistics">
                
            
                <!--
                <div class="col-md-12 col-xs-12">
                        
                         
                    <table border="3" style="width:100%" >
                        
                        <th>#</th><th> Tour Name</th><th>Registration Id</th ><th>Date Of Tour</th><th>NO. of Person</th><th>Total Rent (Ind Curr)</th>                      
                        
                       



                            
                            
                            
                        
                       
                        <tr title="for more detail click !">
                            <td><input type="checkbox" name="check" value="hello    "></td>
                            <td> yo   </td>
                            <td>ID ID </td>
                            <td >20/7/2013</td>
                            <td >8</td>
                            <td >9000 </td>
                            
                        </tr>
                        
                          
                        
                    </table>
                        
                        
                    
                        
                            <input class="btn btn-info" type="submit" style="float:right;margin-top:10px;margin-right:30px;" value="Cancel">
                        *Note:- For Cancel Your Order Please Select one at a Time..
                    </div>
                -->
                
                  <div class="row"> 
                   
                       <%    
                       
                                Connection con2;
                    con2=ConnectDB.connect();
                    Statement st3=con2.createStatement();
                                String ph6;
                                ResultSet   rs6,rs16;
                                rs6=st3.executeQuery("select * from addp ");
                              
                              Boolean b;
                              b=rs6.next();
                              String s6;
                              do
                              {
      
                       
                       
                       %>
                       
                       <div class="col-sm-5 col-xs-12 col-md-5 col-lg-6   ">
                       <div class="card-view"><% s6="image/" +rs6.getString("p1");  %>
                    <div class="card card-inverse card-info"  id="d5" style="background-color: white;">
                        <img class="card-img-top col-md-12" src="<%=s6%>" height="100" weight="100">
                        <div class="card-block">
                            <h4 class="card-title"><%=rs6.getString("tourname")%></h4>
                            <div class="card-text">
                                Tour Price: <%=rs6.getString("tprice")%>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button class="btn btn-info btn-sm" style="width:100%;">See Detail</button>
                        </div>
                    </div>
                </div>
                            </div>
                            
                            <% }while(rs6.next()); %>
        
                   
                   
                   
                   
            
            
            
            
            </div>
                
                
                
                
                
                
                
              
                    
                
    
                
                
                     <div class="modal fade" id="view" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header modal-header-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h1><i class="fa fa-ok"></i> Your Order</h1>
                </div>
               <form action="delete" method="post"  >
                <div class="modal-body">
                    
                     
                    <div class="col-md-12 col-xs-12">
                        
                         
                    <table border="3" style="width:100%" >
                        
                        <th>#</th><th> Tour Name</th><th>Registration Id</th ><th>Date Of Tour</th><th>NO. of Person</th><th>Total Rent (Ind Curr)</th>                      
                        
                       
                                
                        <%
                           Connection connl;
                    connl=ConnectDB.connect();
                    Statement sttl=connl.createStatement();
                    String y=(String) session.getAttribute("mail");   
                            ResultSet   rssl=sttl.executeQuery("select * from book Where Email='"+ y +" '");
                            Boolean stttl=rssl.next();   
                            String w1=null,w2=null,w3=null;
                            int w5=0 ,w4=0;
                                     if(stttl==false) 
                                     {   %>
                                     <h3 style="background:#0d172e; color:white; text-align:center;padding:10px;">You haven't Booked Any Order yet. </h3><%
                                   }
                                  /*   else{
                              
                                     do{
                                 w1=rssl.getString("Destination");
                              w2=rssl.getString("TransactionID");
                                w3=rssl.getString("date");
                                w5=rssl.getInt("Persons");
                                   w4=rssl.getInt("Amount");  */
                    %>


                            
                            
                            
                        
                       
                        <tr title="for more detail click !">
                            <td><input type="checkbox" name="check" value="<w2%>"></td>
                            <td> <=w1%> </td>
                            <td><2%></td>
                            <td ><=w3%></td>
                            <td ><=w5%></td>
                            <td ><=w4%></td>
                            
                        </tr>
                        
                          
                        
                    </table>
                            
                        
                        
                    <% /*}while(rssl.next());  }*/  %>
                        
                            
                        *Note:- For Cancel Your Order Please Select one at a Time..
                    </div> 
                     
                
                
           
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <button class="btn btn-info pull-right "  type="submit"  >Cancel</button>
                </div>
                 </form>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
           
                    
                
                
                
                
                
                
                
            </div> 
            <div role="tabpanel" class="tab-pane" id="donate">
                
             
                <div class="row">

    <div class="col-md-12 " style="margin-top:-18px; padding-top: 5px;">
        <h1 class="page-header"  style="text-align: center; color: white; background:url(image/gallery.jpg);">Gallery</h1>
    
        
        
        <%
          Connection con;
                    con=ConnectDB.connect();
                    Statement st=con.createStatement();
                                String s=(String) session.getAttribute("mail") ,t,phl,k,k1;
                              ResultSet   rs=st.executeQuery("select * from gallery Where Email='"+s+"'");
                              Boolean s1=rs.next();
                                     if(s1==false)
                                     {%>
                                     <h3 style="background:#0d172e; color:white; text-align:center;padding:10px;">You haven't Add Any Photo yet. </h3><%
                                     }
                                     else{
                              
                              do
                              {
                            
                                  t=rs.getString("Photo");
                              phl="image/gallery/"+t;
                                k="Likes:"+rs.getLong("likes");
                                k1=rs.getString("Description");
                    %>
                    
                    
            <div class="col-lg-3 col-md-4 col-sm-6  col-xs-12 thumb">
            <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="<%=k1%>" data-caption="<%=k%>" data-image="<%=phl%>" data-target="#image-gallery">
                <img class="img-responsive" src="<%=phl%>" alt="Short alt text">
            </a>
        </div>
            <% }while(rs.next());} rs.close(); %>
            
                     <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header modal-header-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h1><i class="fa fa-camera"></i> Delete Photo</h1>
                </div>
               <form action="delete" method="get" enctype="multipart/form-data" >
                <div class="modal-body">
                    
                     
                    <div class="col-md-12 col-xs-12">
                        
                         
                    <table border="3" style="width:100%" >
                        
                        <th>#</th><th> Photo Name</th><th>Likes</th colspan="3"><th>Description</th>                      
                        
                        <%
                            Connection con1;
                    con1=ConnectDB.connect();
                    Statement st1=con1.createStatement();
                            ResultSet   rs1=st1.executeQuery("select * from gallery Where Email='"+s+"'");
                            Boolean s11=rs1.next();
                                     if(s11==false)
                                     {%>
                                     <h3 style="background:#0d172e; color:white; text-align:center;padding:10px;">You haven't Add Any Photo yet. </h3><%
                                     }
                                     else{
                              
                              do
                              {
                            
                                  t=rs1.getString("Photo");
                              phl="image/gallery/"+t;
                                k="Likes:"+rs1.getLong("likes");
                                k1=rs1.getString("Description");
                    %>









                            
                            
                            
                        
                       
                        <tr title="for more detail click !">
                            <td><input type="checkbox" name="check" value="<%=rs1.getString("PhotoId")%>"></td>
                            <td> <%=t%>  </td>
                            <td> <%=k%></td>
                            <td colspan="3"><%=k1%></td>
                            
                        </tr>
                        
                           <% }while(rs1.next());} rs1.close(); %>
                        
                    </table>
                        
                        
                    
                        

                        *Note:- For Delete Your Photo Please Select one at a Time..
                    </div>
                    
                     
                
                
           
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <button class="btn btn-info pull-right "  type="submit"  >Delete</button>
                </div>
                 </form>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 thumb">
            <a  href="#" data-target="#addp"   data-toggle="modal">
                <button type="button"  class="btn btn-info btn-circle btn-lg"><i class="fa fa-plus"></i></button> </a> <br><br>
        <a  href="#" data-target="#delete"   data-toggle="modal">
                <button type="button"  class="btn btn-danger btn-circle btn-lg"><i class="fa fa-minus"></i></button> </a>
        
        </div>
</div>

                    
                    
                    
                    
                    <div class="modal fade" id="addp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header modal-header-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h1><i class="fa fa-camera"></i> Add Photo</h1>
                </div>
                <form action="AGallery" method="post" enctype="multipart/form-data" >
                <div class="modal-body">
                    
                    <h4 style="margin-left:  15px;"> Description:</h4> <input type="textArea" name="des" placeholder="Enter description" Style="width:95%;margin: 10px;">
                
                    <input type="file" required="" name="image" >
                
                
           
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <button class="btn btn-info pull-right "  type="submit"  >Save</button>
                </div>
                 </form>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
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
                
                
                
                
                
                
                
                
                </div>
                
                
            </div>
                
                
                
            <div role="tabpanel" class="tab-pane" id="settings">
            
                <div class="hek" style=" font-size: 40px; ">
                         <table  align="center" class="tb">
                <th colspan="2" style="text-align: center; font-family: Alexuss Heavy; padding: 10px; background: black;color:white;"><u>Profile</u></th>
                
                
                <tr>
                    <td><b>User Name: </b> </td><td> <%=session.getAttribute("name") %></td>
                </tr>
                <tr>
                    <td><b>Address: </b> </td><td> <%=session.getAttribute("address") %></td>
                </tr>
                <tr>
                    <td><b>Gender: </b> </td><td> <%=session.getAttribute("ling") %></td>
                </tr>
                
               <tr>
                    <td><b>E-mail:  </b> </td><td> <%=session.getAttribute("mail") %></td>
                </tr>
                
                <tr>
                    <td><b>Photo: </b> </td><td style="text-align: center;"> <img src="<%=pic%>" height="80px" weight="70px" style="border-right: 50%; border:1px solid #0e1a35;"></td>
                </tr>
                <tr >
                    <td colspan="2" style="text-align: center;"><a href="#"  data-toggle="modal" data-target="#primary" ><button class="btn btn-success" id="sb">Change Password</button></a> <a href="editpr.jsp#settings"><button class="btn btn-info" id="sb" >Edit Profile</button></a> </td>
                </tr>
                
                
            </table>
                    </div>
                
                
                
                
            </div>
                
                
                
    <!-- Modal -->
    <div class="modal fade" id="primary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header modal-header-primary">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h1><i class="fa fa-cog"></i> Change Password</h1>
                </div>
                <form action="upass" method="post" accept-charset="utf-8">
                <div class="modal-body">
                    
                    <div class="modal-body" style="padding: 5px;">
                          <div class="row">
                                <div class=" col-md-12 col-sm-12 col-xs-12" style="padding-bottom: 10px;">
                                    <input class="form-control" name="opass" placeholder="Old Password" type="password" required autofocus />
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12" style="padding-bottom: 10px;">
                                    <input class="form-control" name="npass" placeholder="New Password" type="password" required />
                                </div>
                              <div class="col-md-12 col-sm-12 col-xs-12" style="padding-bottom: 10px;">
                                    <input class="form-control" name="cpass" placeholder="Confirm Password" type="password" required />
                                </div>
                            
                           
                            
                            </div>
                            
                    </div> 
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-danger pull-right" >Save</button>
                </div></form>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
                
                
                
                
                
                
                
         <!--   <div role="tabpanel" class="tab-pane help-pane" id="help">
            <!-- End Help -- >
            </div> -->
        </div>
    </div>
</div>
    
     <script src="js/jquery.min.js"></script>
     <script src="js/client.js"></script>
     <script src="js/modal.js"></script>
     <script src="js/bootstrap.min.js"></script>
    
     <script src="js/jquery-2.1.1.min.js"></script>
    
    </body>
</html>