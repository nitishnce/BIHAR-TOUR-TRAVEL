/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nitish Aryan
 */
public class store extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        response.sendRedirect("login.html");
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

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException
    {
        res.setContentType("text/html;charset=UTF-8");
        System.out.println("scdsv");
        PrintWriter out=res.getWriter();
        System.out.println("scdsv");
        
        try{
         
          Connection Con= ConnectDB.connect();
            
          PreparedStatement ps=Con.prepareStatement("insert into registration(name,Email,password,Address,gender,photo,log) value(?,?,?,?,?,?,?)");
          
           ps.setString(1, req.getParameter("name"));
          
           ps.setString(2, req.getParameter("Email"));
           ps.setString(3, req.getParameter("password"));
           
           ps.setString(4,"  ");
           ps.setString(5,"  ");
           ps.setString(6, "user.png");
           ps.setString(7,"client");
           
           
            ps.execute();
            RequestDispatcher rd=req.getRequestDispatcher("login.html");
            rd.include(req, res);  
       
            out.println("<html>\n" +
"<body>\n" +
"<script>\n" +
"alert(\"Your Have Created Account Successfully. \\n Please Login for Order Our Packages...\");\n" +
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
