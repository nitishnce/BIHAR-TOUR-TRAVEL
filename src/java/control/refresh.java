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
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nitish Aryan
 */
public class refresh extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        
         Connection connl;
                    connl=ConnectDB.connect();
                      PrintWriter out=response.getWriter();
                    Statement sttl=connl.createStatement();
                    ResultSet   rss23=sttl.executeQuery("select date,PhotoId from potw Where date = (SELECT MAX(date) from potw) ");
                            Boolean sttt=rss23.next();
                            out.println("sdfvsd ");
                            
                            int i=Integer.parseInt(rss23.getString("date"));
                            String t=rss23.getString("PhotoId");
                             i=i+7;
                             out.println("sdfvsd ");
                             Date now1 = new Date();
                 SimpleDateFormat ft1 = new SimpleDateFormat ("yyyyMMdd");
                    String g=(String)ft1.format(now1);
                    int i1=Integer.parseInt(rss23.getString(g));
                    out.println("sdfvsd ");
                    out.println("sdfvsd ");
                    if(i>=i1)
                    {
                        String y,y2,y3,y4;  int y1; 
                            ResultSet   rssl=sttl.executeQuery("select * from gallery Where likes = (SELECT MAX(likes) from gallery) ");
                            Boolean stttl=rssl.next();   
                            
                           
                                
                                        y=rssl.getString("PhotoId");
                                        y1=rssl.getInt("likes");
                                        y2=rssl.getString("Email");
                                        
                                          ResultSet   rss2=sttl.executeQuery("select * from registration Where Email=' "+y2+"'");
                            Boolean stttll=rss2.next();   
                            y3=rss2.getString("name");
                            out.println("sdfvsd 3333");
                            y4=rss2.getString("Adress");
                            if(t.equals(y)){response.sendRedirect("POTW.jsp");}else{
                            PreparedStatement ps=connl.prepareStatement("insert into potw(Name,Email,PhotoId,Address,Likes,date) value(?,?,?,?,?,?)");
                            ps.setString(1, y3);
                            ps.setString(2, y2);
                            out.println("sdfvsd6666666 ");
                            ps.setString(3, y);
                            ps.setString(4, y4);
                            ps.setInt(5, y1);
                            Date now = new Date();
                 SimpleDateFormat ft = new SimpleDateFormat ("yyyyMMdd");
                 
                 ps.setString(6, (String)ft.format(now));
                            ps.execute();
                            
                    }
                    }
                       
                    
                    response.sendRedirect("POTW.jsp");
                    
        
        
        
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
