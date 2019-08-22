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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nitish Aryan
 */
public class delete extends HttpServlet {

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
        PrintWriter out=response.getWriter();
        Connection con;
         
       try {
            con=ConnectDB.connect();
            
            PreparedStatement ps=con.prepareStatement("delete from gallery where PhotoId=?");
           
            ps.setString(1,request.getParameter("check"));
           
            ps.executeUpdate();
            response.sendRedirect("ClientD.jsp");
            
        } catch (Exception ex) {
            Logger.getLogger(delete.class.getName()).log(Level.SEVERE, null, ex);
        }
        
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
        
        PrintWriter out=response.getWriter();
        Connection con,conn;
        
        HttpSession session=request.getSession();
       
        
       try {
            con=ConnectDB.connect();
            
            PreparedStatement ps=con.prepareStatement("delete from book where TransactionID=?");
            String f5=null;int e5=0;
            f5=request.getParameter("check");
            {
                Statement stt3=con.createStatement();
                ResultSet   rss=stt3.executeQuery("select Persons from book Where TransactionID=?");
                            Boolean stt=rss.next();
                            e5=rss.getInt("Persons");
                            
                       
                            
            }
            ps.setString(1,f5);
            
            
            if(1==1){
                conn=ConnectDB.connect();
                PreparedStatement ps1=conn.prepareStatement("update addp set Persons=? ");
                Statement stt31=conn.createStatement();
                ResultSet   rss1=stt31.executeQuery("select Persons from addp ");
                            Boolean stt=rss1.next();
                            e5=e5+ rss1.getInt("Persons");
                
                
                ps1.setInt(1, e5);
                
                ps1.executeUpdate();
                
            }
            
           
            ps.executeUpdate();
            
            
            
            
            
        } catch (Exception ex) {
            Logger.getLogger(delete.class.getName()).log(Level.SEVERE, null, ex);
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
