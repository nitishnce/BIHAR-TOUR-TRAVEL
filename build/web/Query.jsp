<%-- 
    Document   : Aorder
    Created on : 1 Jun, 2017, 11:24:42 PM
    Author     : Nitish Aryan
--%>

<% 
    if(session.getAttribute("mail")==null )
    {
        response.sendRedirect("login.html");
    }
    

    

    
    %>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="control.ConnectDB"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/admin.css">
        <title>Client Query | Admin</title>
        <style>
            @media(min-width:768px){
            #page-wrapper{
                margin-left:230px;}
            body{
                width:80%;
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
         
         
         <div id="page-wrapper"  >
              <div class="inbox-head" style="background: url(image/6.jpg) ; padding: 40px;margin-bottom: 5px; ">
                          <h1 style="color:windowframe; text-align: center;">Query Ask BY Client</h1>
                          
                      </div>
        
             
                    <div class="col-md-12 col-xs-12">
                         <form action="deletec" method="post">
                             <table border="3"  class="table-responsive" style="width: 100%;">
                        
                        <th>#</th><th> Name</th><th>E-mail</th><th>Subject</th><th colspan="3">Message</th><th>Date</th>              
                        
                       
                        <%
                            
                             Connection connl;
                    connl=ConnectDB.connect();
                    Statement sttl=connl.createStatement();
                    String y;   
                            ResultSet   rssl=sttl.executeQuery("select * from query ");
                            Boolean stttl=rssl.next();   
                            String d;
                                do{
                                    d=rssl.getString("Date");
                                
                            
                            %>
                        
                        
                            
                        
                       
                        <tr title="for more detail click !">
                            <td><input type="checkbox" name="check" value="<%=d%>"></td>
                            <td><%=rssl.getString("Name")%></td>
                            <td> <%=rssl.getString("Email")%></td>
                            <td><%=rssl.getString("Subject")%></td>
                            
                           
                            <td colspan="3"><%=rssl.getString("Message")%></td>
                            <td> <%=d%></td>
                            
                        </tr>
                        
                          <% }while(rssl.next()); %>
                        
                        
                    </table>
                        <input class="btn btn-info" type="submit" style="float:right;margin-top:10px;margin-right:30px;" value="Delete">
                        
                                                </form>

                        *Note:- For Delete Query Please Select one at a Time..
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
         
         
         
         
         
         
         
       
        
         <script src="js/forsl.js"></script>
        
         
         
        
    </body>
</html>
