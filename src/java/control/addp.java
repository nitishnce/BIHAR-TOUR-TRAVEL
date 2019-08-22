/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Nitish Aryan
 */
public class addp extends HttpServlet {

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
        response.sendRedirect("AddPackage.jsp");
    }
private static final long serialVersionUID = 1L;
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
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
        HttpSession session=req.getSession();
        res.setContentType("text/html;charset=UTF-8");
        System.out.println("scdsv");
        PrintWriter out=res.getWriter();
        System.out.println("scdsv");
        
        try{
         
          Connection Con= ConnectDB.connect();
            out.println("dfs  12222st555555:");
          PreparedStatement ps=Con.prepareStatement("insert into addp(tourname,tourid,day,date,tprice,hrent,crent,brent,seat,source,p1,p2,p3,about) value(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
          
           ps.setString(1, req.getParameter("name"));
           
          out.println("dfs  12222st555555:"+req.getParameter("name"));
           ps.setString(2, req.getParameter("idk"));
             String s5=req.getParameter("idk");
           out.println("dfs  sdvvsd:"+ s5 );
           
             out.println("dfs  6565595959599:"+ s5 );
            s5=req.getParameter("dayy");
           
           out.println("dfs  sdvvsd:" +s5);
           ps.setLong(3, Long.parseLong(s5));
           out.println("dfs  iiiiiiiiiiiiiii:");
           ps.setString(4,req.getParameter("date"));
           ps.setInt(5,Integer.parseInt(req.getParameter("trent")));
           ps.setInt(6,Integer.parseInt(req.getParameter("hrent")));
           ps.setInt(7,Integer.parseInt(req.getParameter("crent")));
           ps.setInt(8,Integer.parseInt(req.getParameter("brent")));
           out.println("dfs  jhghj:");
           
           ps.setInt(9,Integer.parseInt(req.getParameter("seat")));
          out.println("dfs  kjhkhgj:");
           ps.setString(10,"source");
           String s4;
           
           String imageName=null;
         InputStream inputStream = null;
                    OutputStream outputStream = null;
          Part filePart = req.getPart("p1");
         
                  imageName = getFileName(filePart);
         
          
          s4=imageName;
          
          
                out.println("dfs  12222st555555:");
                 
                 String basePath = "E:\\net\\tourism\\web\\image\\";
                 
                 File outputFilePath = new File(basePath + imageName);
out.println("dfs  1st555555:");
                        inputStream = filePart.getInputStream();
                    outputStream = new FileOutputStream(outputFilePath);

                            int read = 0;
                         byte[] bytes = new byte[1024];
                        while ((read = inputStream.read(bytes)) != -1) {
                         outputStream.write(bytes, 0, read);
                        }
                        
          
          s4=imageName;
     
           
           
           
           
  
           ps.setString(11,s4);
           
                    filePart = req.getPart("p2");
         
                  imageName = getFileName(filePart);
         
          
          s4=imageName;
          
          
                out.println("dfs  12222st555555:");
                 
                  basePath = "E:\\net\\tourism\\web\\image\\";
                 
                  outputFilePath = new File(basePath + imageName);
out.println("dfs  1st555555:");
                        inputStream = filePart.getInputStream();
                    outputStream = new FileOutputStream(outputFilePath);

                             read = 0;
                         bytes = new byte[1024];
                        while ((read = inputStream.read(bytes)) != -1) {
                         outputStream.write(bytes, 0, read);
                        }
                        
          
          s4=imageName;
           
           
           
           
           ps.setString(12,s4);
           
                    filePart = req.getPart("p3");
         
                  imageName = getFileName(filePart);
         
          
          s4=imageName;
          
          
                out.println("dfs  12222st555555:");
                 
                  basePath = "E:\\net\\tourism\\web\\image\\";
                 
                  outputFilePath = new File(basePath + imageName);
out.println("dfs  1st555555:");
                        inputStream = filePart.getInputStream();
                    outputStream = new FileOutputStream(outputFilePath);

                             read = 0;
                         bytes = new byte[1024];
                        while ((read = inputStream.read(bytes)) != -1) {
                         outputStream.write(bytes, 0, read);
                        }
                        
          
          s4=imageName;
           
           
           
           
           
           
           
           
           
           
           ps.setString(13,s4);
           ps.setString(14,req.getParameter("about"));
           
           
            ps.execute();
            RequestDispatcher rd=req.getRequestDispatcher("AddPackage.jsp");
            rd.include(req, res);  
       
            out.println("<html>\n" +
"<body>\n" +
"<script>\n" +
"alert(\"Your Have added tour Successfully. \");\n" +
"</script>\n" +
"</body>\n" +
"</html>");
          
          
        }
        catch(Exception e)
        {
            System.out.println(e);
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
