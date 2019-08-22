<%-- 
    Document   : Ahome
    Created on : 1 Jun, 2017, 11:24:42 PM
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
        <link rel="stylesheet" href="css/admin.css">
        <title>Admin Home</title>
        <style>
            @media(min-width:768px){
            #page-wrapper{
                margin-left:230px;}
            body{
                width:80%;
            }
            
            }
            
            
            #a1{
                width:100%;text-align: left;padding: 5px; mergin-right:2px; white-space: normal;
            }
            button{
                padding: 5px;
            }
            
            
        </style>
    </head>
    <body >
        
         <%@include file="Header Admin.jsp" %>
         
         
         <div id="page-wrapper"  >
        
             
                    <h1>Hello, <%= session.getAttribute("name")  %></h1>
                    
                    <div class="mail-box">
                    <div class="inbox-head">
                          <h3>Notification</h3>
                          
                      </div>
                        <table class="table table-inbox table-hover">
                           <tbody>
                               
                                 
                               
                        <!--       <tr>
                                   <td class="view-message center-block">
                                       <b> No Notification.. <b>
                                   </td>
                               </tr>   -->
                                
                               
                            <tr>
                                   <td class="view-message ">
                                     <!--  <form action="#" method="post">  <button class="btn " id="a1"   type="submit" id="qw" title="Click For View Notification.." name="message" value="kjnvdskjnvdskn dsfcndsk sdkcnds"> <span class="glyphicon glyphicon-envelope"  aria-hidden="true"></span> <b> rahul  </b> has Intrested in your <b>rajgir </b> Site and You Got A Message.. <span style="float: right; padding-right: 5%; "> 22/5/2017 </span></button></form>
                                  -->
                                  <h3 style="background:#0d172e; color:white; text-align:center;padding:10px;">You haven't Any Notification yet. </h3>
                                   </td>
                               </tr>
                               
                     
                        
                              
                            </tbody>  
                        </table>
                        
                        
                        
                        </div>
              
             
    </div>
         
         
         
         
         
         
         
         
         
         
         
         
        
        
        
    </body>
</html>
