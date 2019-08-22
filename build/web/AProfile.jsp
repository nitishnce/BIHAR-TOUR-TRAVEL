<%-- 
    Document   : AProfile
    Created on : 1 Jun, 2017, 10:08:25 PM
    Author     : Nitish Aryan
--%>

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
        
        <title>Admin Profile</title>
        
    </head>
    <body>
        
        <%@include file="Header Admin.jsp" %>
        
        
        
        <div id="page-wrapper">
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
                
                <tr> <% String pc="image/"+ session.getAttribute("pic") ; %>
                    <td><b>Photo: </b> </td><td style="text-align: center;"> <img src="<%=pc %>" height="80px" weight="70px" style="border-right: 50%; border:1px solid #0e1a35;"></td>
                </tr>
                <tr >
                    <td colspan="2" style="text-align: center;"><a href="#"  data-toggle="modal" data-target="#primary" ><button class="btn btn-success" id="sb">Change Password</button></a> <a href="AprofileE.jsp"><button class="btn btn-info" id="sb" >Edit Profile</button></a> </td>
                </tr>
                
                
            </table>
                    </div>
                
                    
          
        <!-- /.container-fluid -->
    </div>
                
                
                
                <div class="modal fade" id="primary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header modal-header-primary" style="background-color: #31b0d5;">
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
        
        
               
        
        
    </body>
</html>
