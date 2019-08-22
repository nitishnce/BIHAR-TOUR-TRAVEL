<%-- 
    Document   : Header Admin
    Created on : 1 Jun, 2017, 9:59:15 PM
    Author     : Nitish Aryan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<head>
    <link rel="stylesheet" href="css/admin.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>


<div id="throbber" style="display:none; min-height:120px;"></div>
<div id="noty-holder"></div>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="padding:10px;">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header"  >
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse" style="float:right;">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html" style="height:0px ; padding:1px;" id="p8">
                <img src="images/logo/logo.png" height="50" weight="80" class="img-resposive" alt="LOGO" >
            </a>
        </div>
        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav" style="float:right;" id="r7">
            <li><a href="Ahome.jsp" data-placement="bottom" data-toggle="tooltip" href="#" style="font-size:20px;" data-original-title="Stats"><i class="fa fa-home"></i>
                </a>
            </li>             <% String pic="image/"+ session.getAttribute("pic") ; %>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" style="padding:3px;" data-toggle="dropdown"> <img src="<%=pic%>" height="40" weidth="40" style="border-radius:50%;"> <b class="fa fa-angle-down"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="AProfile.jsp"><i class="fa fa-fw fa-user"></i> Profile</a></li>
                  <!--  <li><a href="#"><i class="fa fa-fw fa-cog"></i> Change Password</a></li>    -->
                    <li class="divider"></li>
                    <li><a href="logout"><i class="fa fa-fw fa-power-off"></i> Logout</a></li>
                </ul>
            </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-1"><i class="fa fa-fw fa-user-plus"></i> Clients <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-1" class="collapse">
                        <li><a href="Aorder.jsp"><i class="fa fa-angle-double-right"></i> Orders</a></li>
                        <li><a href="ListProfile.jsp"><i class="fa fa-angle-double-right"></i> Profile</a></li>
                        
                    </ul>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-2"><i class="fa fa-fw fa-star"></i>  Competition <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-2" class="collapse">
                        <li><a href="POTW.jsp"><i class="fa fa-angle-double-right"></i> Pic of the week</a></li>
                      <!--  <li><a href="POTM.jsp"><i class="fa fa-angle-double-right"></i> Pic of the Month</a></li>   -->
                       
                    </ul>
                </li>
                <li>
                    <a href="AddPackage.jsp"><i class="fa fa-fw fa-folder"></i> Packages</a>
                </li>
                
                <li>
                    <a href="Query.jsp"><i class="fa fa-fw fa fa-question-circle"></i> Client Query</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>

   
    <!-- /#page-wrapper -->
</div><!-- /#wrapper -->
<script src="js/jquery.min.js"></script>
<script src="js/admin.js"></script>
    

 <script src="js/bootstrap.min.js"></script> 
    
    
