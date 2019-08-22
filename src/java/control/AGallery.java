/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import static control.ConnectDB.Con;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Nitish Aryan
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 50, maxRequestSize = 1024 * 1024 * 100)    
public class AGallery extends HttpServlet {

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
        response.sendRedirect("ClientD.jsp");
        
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    private static final long serialVersionUID = 1L;
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
       
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        
       
            Connection con=null;
            String s1=null,s2=null,s3=null,s4=null,s5=null,s6;
            InputStream inputStream = null;
                    OutputStream outputStream = null;
                    try {
                con=ConnectDB.connect();
                
          PreparedStatement ps=con.prepareStatement("insert into gallery set PhotoId=?, Photo=?,likes=?,Email=?,Description=?");
          
                
          s2=request.getParameter("des");
          
          s4="0";
          
          
          String imageName=null; 
        /** out.println("dfs  1st5        55555:"+ s1);*/
          Part filePart = request.getPart("image");
        /* out.println("dfs  1st55588888888888888888888555:"+ s1);*/
                  imageName = getFileName(filePart);
          
          
          s3=imageName;
          
          
               
                 
                 String basePath = "E:\\net\\tourism\\web\\image\\gallery\\";
                 
                 File outputFilePath = new File(basePath + imageName);

                        inputStream = filePart.getInputStream();
                    outputStream = new FileOutputStream(outputFilePath);

                            int read = 0;
                        final byte[] bytes = new byte[1024];
                        while ((read = inputStream.read(bytes)) != -1) {
                         outputStream.write(bytes, 0, read);
                        
                        
          }
                        s1=imageName;
                        s3=(String) session.getAttribute("mail");
                        
                        int z=1;
            Statement st=Con.createStatement();
           ResultSet rs=st.executeQuery("SELECT S_no FROM gallery WHERE S_no = ( SELECT MAX(S_no) FROM registration)");
      while(rs.next()) {
       
        z=rs.getInt("S_no")+z;
               
       }

                        s5=s1+"+"+s3+z;
          
          ps.setString(1, s5);
          ps.setString(2, s1);
        
          ps.setLong(3, Long.parseLong(s4));
          ps.setString(4, s3);
        
          ps.setString(5, s2);
          
          ps.execute();
          
          
          RequestDispatcher rd=request.getRequestDispatcher("ClientD.jsp");
            rd.include(request, response);
              
               out.println("<html>\n" +
"<body>\n" +
"<script type=\"text/javascript\">\n" +
"alert(\"Your Photo Added Successfully...\");\n" +
"</script>\n" +
"</body>\n" +
"</html>");
          
                    
                    
                    
                    
                    
                    
                    } catch (ClassNotFoundException ex) {
            Logger.getLogger(AGallery.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AGallery.class.getName()).log(Level.SEVERE, null, ex);
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
