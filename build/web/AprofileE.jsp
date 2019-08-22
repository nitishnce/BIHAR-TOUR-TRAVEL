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
            <form action="editpro" method="post" enctype="multipart/form-data">
                         <table  align="center" class="tb">
                <th colspan="2" style="text-align: center; font-family: Alexuss Heavy; padding: 10px; background: black;color:white;"><u>Profile</u></th>
                
                
                <tr>
                    <td><b>User Name: </b> </td><td> <input placeholder="<%=session.getAttribute("name") %>" name="name" type="text"></td>
                </tr>
                <tr>
                    <td><b>Address: </b> </td><td><input placeholder=" <%=session.getAttribute("address") %>" name="address" type="text"></td>
                </tr>
                <tr>
                    <td><b>Gender: </b> </td><td> <input placeholder="<%=session.getAttribute("ling") %>" type="text" name="ling"></td>
                </tr>
                
               <tr>
                    <td><b>E-mail:  </b> </td><td><%=session.getAttribute("mail") %></td>
                </tr>
                
                <tr>
                    <td><b>Photo: </b> </td><td style="text-align: center;"> <input type="file" name="image"></td>
                </tr>
                <tr >
                    <td colspan="2" style="text-align: center;"><button class="btn btn-success" name="use" value="cancel" id="sb">Cancel</button> <button class="btn btn-info" name="use" value="save" id="sb" >Save</button> </td>
                </tr>
                
                
            </table>
            </form>
                    </div>
                
                    
          
        <!-- /.container-fluid -->
    </div>
                
                
                
                      
               
        
        
    </body>
</html>
