package control;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


import java.sql.SQLException;


/**
 *
 * @author Nitish Aryan
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 50, maxRequestSize = 1024 * 1024 * 100)    
public class editpro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     private static final long serialVersionUID = 1L;
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }
    
     private String getFileName(Part part) {
final String partHeader = part.getHeader("content-disposition");
System.out.println("***** partHeader: " + partHeader);
for (String content : part.getHeader("content-disposition").split(";")) {
if (content.trim().startsWith("filename")) {
return content.substring(content.indexOf('=') + 1).trim()
.replace("\"", "");
}
}
return null;
}

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String s=request.getParameter("use");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        
       
            Connection con=null;
            String s1=null,s2=null,s3=null,s4=null,s5=null,s6;
            InputStream inputStream = null;
                    OutputStream outputStream = null;
                    if(s.equals("save")){
            try {
                con=ConnectDB.connect();
                
          PreparedStatement ps=con.prepareStatement("update registration set name=?,gender=? ,Address=?,photo=? where Email=?");
          
                s1=request.getParameter("name");
          s2=request.getParameter("ling");
         
                 
     
             if(s1.equals("")){
                    s1=(String) session.getAttribute("name");
                }
             
             if(s2.equals("")){
                    s2=(String) session.getAttribute("ling");
                }
             out.println("dfs  22nd:"+ s2);
             
             
          ps.setString(1, s1);
          
          s3=request.getParameter("address");
         
                 
             out.println("dfs  1st:"+ s1);
             if(s3.equals("")){
                    s3=(String) session.getAttribute("address");
                }
             ps.setString(2,s2);
             
          ps.setString(3, s3);
          
          String imageName=null;
         out.println("dfs  1st5        55555:"+ s1);
          Part filePart = request.getPart("image");
         out.println("dfs  1st55588888888888888888888555:"+ s1);
                  imageName = getFileName(filePart);
          out.println("dfs  1st5555559999999999999555555:"+ s1);
          
          s4=imageName;
          if(s4.equals("")){
              imageName=(String) session.getAttribute("pic");
          }
          else{
          
                out.println("dfs  12222st555555:"+ s1);
                 
                 String basePath = "E:\\net\\tourism\\web\\image\\";
                 
                 File outputFilePath = new File(basePath + imageName);
out.println("dfs  1st555555:"+ s1);
                        inputStream = filePart.getInputStream();
                    outputStream = new FileOutputStream(outputFilePath);

                            int read = 0;
                        final byte[] bytes = new byte[1024];
                        while ((read = inputStream.read(bytes)) != -1) {
                         outputStream.write(bytes, 0, read);
                        }
                        
          }
          s4=imageName;
          out.println("dfs56:"+ s3);
          out.println("dfffffffffffffffffffffffffffffffffffffffffffffffffff");
          
          ps.setString(4, s4);
          out.println("5555");
         ps.setString(5, (String) session.getAttribute("mail"));
         out.println("9999999");
          ps.executeUpdate();
          
                
                String s8=(String) session.getAttribute("admin")+"";
               
                session.setAttribute("name", s1);
                session.setAttribute("address", s3);
                session.setAttribute("ling", s2);
                
                session.setAttribute("pic", s4);
                
                
                
                
                
                if(s8.equals("admin")){response.sendRedirect("AProfile.jsp");}else{
                response.sendRedirect("ClientD.jsp");}
          
                
                
                
            } catch (ClassNotFoundException | SQLException | IOException ex) {
                Logger.getLogger(editpro.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            finally {
if (outputStream != null) {
outputStream.close();
}
if (inputStream != null) {
inputStream.close();
}
}
    }
                    else{
    response.sendRedirect("ClientD.jsp");
}
    }

    
   

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
