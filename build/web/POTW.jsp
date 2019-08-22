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
        <title>PIC OF THE WEEK | Admin</title>
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
                          <h1 style="color:windowframe; text-align: center;">PIC OF THE WEEK</h1>
                          
                      </div>
        
             
                    <div class="col-md-12 col-xs-12">
                         <form action="deletec" method="get">
                    <table border="3" style="width:100%;" class="table-responsive">
                        
                        <th>#</th><th> Name</th><th>E-mail</th><th colspan="2">PhotoId</th><th>Likes</th><th colspan="3">Address</th>               
                        
                       
                        <% 

                            
                           Connection connl;
                    connl=ConnectDB.connect();
                    Statement sttl=connl.createStatement();
                    String y=(String) session.getAttribute("mail");   
                            ResultSet   rssl=sttl.executeQuery("select * from potw ");
                            Boolean stttl=rssl.next();   
                           String f=null; int i1,i2,i3;
                                do{
                                    
                                
                            
                            f=rssl.getString("PhotoId");
                            
                            
                            
                            
                            %>
                            
                        
                       
                        <tr title="for more detail click !">
                            <td><input type="checkbox" name="check" value="<%=f%>"></td>
                            <td><%=rssl.getString("Name")%></td>
                            <td><%=rssl.getString("Email")%></td>
                            <td colspan="2"> <%=f%></td>
                            <td><%=rssl.getInt("Likes")%></td>
                            
                           
                            <td colspan="3"><%=rssl.getString("Address")%> </td>
                            
                        </tr>
                        
                          
                        
                        
                    </table>
                            <% }while(rssl.next()); %>
                        <input class="btn btn-info" type="submit" style="float:right;margin-top:10px;margin-right:30px;" value="Delete">
                        
                                                </form>

                        *Note:- For Delete Your Site Please Select one at a Time..
                    </div>

              
             
    </div>
         
         
         
         
         
         
         
         
         
         
       
        
         <script src="js/forsl.js"></script>
        
       
         
        
    </body>
</html>
