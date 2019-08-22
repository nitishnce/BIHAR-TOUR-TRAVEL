<!DOCTYPE html>
<html lang="en">
<head>
<title>Client | KNET TOURISM</title>

    <link rel="stylesheet" href="css/client.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/mycs.css">
   
   
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
       
   </style>
       
   
</head>
<body>











<div class="dashboard">
    <div class="well" style="text-align: center; margin-bottom:10px;">
    <img src="images/logo/logo.png"  height="50" weight="80"   >
    <h2 id="f4">Welome to Knect Tourism</h2>
    <h4 style="color:#1abc9c;" id="f4">A Unit of Bihar Travel Agency</h4>
    
    </div>
    <div class="row">
        <div class="col-md-12  " >
            
            <ul class="dashboard-tabs" >
                
                <li >
                    <a href="ClientD.jsp" class="btn disabled"  title=" First CLick On Cancel " aria-controls="profile" role="tab" data-toggle="tab">
                        <span class="fa fa-home" id="q2" ></span>
                        <h4 id="q3">Home</h4>
                    </a>
                </li>
                <li>
                    <a href="ClientD.jsp" class="btn disabled" title=" First CLick On Cancel " aria-controls="statistics" role="tab" data-toggle="tab">
                        <span  id="q2" class="fa fa-road"></span>
                        <h4 id="q3">Tour Package</h4>
                    </a>
                </li>
                <li>
                    <a href="ClientD.jsp" class="btn disabled" title=" First CLick On Cancel " aria-controls="donate" role="tab" data-toggle="tab">
                        <span id="q2"class="fa fa-camera"></span>
                        <h4 id="q3">Ur Photo</h4>
                    </a>
                </li>
                <li class="active" style="padding-top: 10px;">
                    <a href="ClientD.jsp" class="btn" aria-controls="settings" role="tab" data-toggle="tab">
                        <!--<span id="q2" class="fa fa-user"></span>  --> <img src="image/user.png" class="img-circle" height="45" width="45"> 
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
        
                
                
                
            <div role="tabpanel" class="tab-pane active" id="settings">
            
                <div class="hek" style=" font-size: 40px; ">
                    <form action="editpro" method="post" enctype="multipart/form-data">
                         <table  align="center" class="tb">
                <th colspan="2" style="text-align: center; font-family: Alexuss Heavy; padding: 10px; background: black;color:white;"><u>Profile</u></th>
                
                
                <tr>
                    <td><b>User Name: </b> </td><td> <input style="width:95%;" type="text" name="name" placeholder="<%=session.getAttribute("name") %>"></td>
                </tr>
                <tr>
                    <td><b>Address: </b> </td><td> <input type="text" style="width:95%;" name="address" placeholder="<%=session.getAttribute("address") %>"></td>
                </tr>
                <tr>
                    <td><b>Gender: </b> </td><td> <input type="text" style="width:95%;" name="ling" placeholder="<%=session.getAttribute("ling") %>"> </td>
                </tr>
                
               <tr>
                    <td><b>E-mail:  </b> </td><td> <%=session.getAttribute("mail") %></td>
                </tr>
                
                <tr>
                    <td><b>Photo: </b> </td><td style="text-align: center;"> <input style="width:95%;" name="image" type="file"></td>
                </tr>
                <tr >
                    <td colspan="2" style="text-align: center;"><button class="btn btn-success" name="use" value="cancel" id="sb">Cancel</button> <button class="btn btn-info" name="use" value="save" id="sb" >Save</button> </td>
                </tr>
                
                
            </table>
                    </form>
                    </div>
                
                
                
                
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