/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import static control.ConnectDB.Con;
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
public class booking extends HttpServlet {

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
        response.sendRedirect("book.jsp");
        
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
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
          res.setContentType("text/html;charset=UTF-8");
        System.out.println("scdsv");
        PrintWriter out=res.getWriter();
    RequestDispatcher rd=req.getRequestDispatcher("book.jsp");
            rd.include(req, res);  
       
            out.println("<html>\n" +
"<body>\n" +
"<script>\n" +
"alert(\"Sorry Booking Available. \\n Kindly request Book Next Time.\");\n" +
"</script>\n" +
"</body>\n" +
"</html>");
        
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
        
           res.setContentType("text/html;charset=UTF-8");
        System.out.println("scdsv");
        PrintWriter out=res.getWriter();
        System.out.println("scdsv");
        
        try{
         
          Connection Con= ConnectDB.connect();
            
          PreparedStatement ps=Con.prepareStatement("insert into book(Name,Address,Mobile,Email,Persons,date,Destination,Tourrent,Hotelrent,Cabrent,Busrent,query,TransactionID,Amount) value(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
          
           ps.setString(1, req.getParameter("name"));
          
           ps.setString(2, req.getParameter("address"));
           ps.setLong(3, Long.parseLong(req.getParameter("mobile")));
           
           ps.setString(4,req.getParameter("email"));
           ps.setString(5,req.getParameter("date"));
           int k5;
           k5=Integer.parseInt(req.getParameter("person"));
           ps.setInt(6,k5);
           String f=req.getParameter("destination") ,f2=null,f3,f4,f5,f6;
           f3=req.getParameter("trent");
           f4=req.getParameter("hrent");
           f5=req.getParameter("crent");
           f6=req.getParameter("brent");
           int i1=0,i2=0,i3=0,i4=0,total=0,p=0,u=0;
           Statement st=Con.createStatement();
           ResultSet rs=st.executeQuery("SELECT * FROM addpac WHERE TourName = '"+f+"'");
      while(rs.next()) {
       
        f2=rs.getString("TourID");
        i1=rs.getInt("trent");
        i2=rs.getInt("hrent");
        i3=rs.getInt("crent");
        i4=rs.getInt("brent");
        p=rs.getInt("person");
        
        
        
               
       }
      f2=f2+k5+p;
      u=p-k5;
      if(1==1){
      Connection Con1=null;
      PreparedStatement ps1=Con1.prepareStatement("update addp set person=? where TourID=?");
      ps1.setInt(1,u );
      ps1.setString(2,f );
      ps1.executeUpdate();
      
      }
      if(p==0)
      {
          doGet(req, res);
          
      }
           
           
           if(f3.equals("yes"))
           {
               total=total+i1;
           }
           if(f4.equals("yes"))
           {
               total=total+i2;
           }
           if(f5.equals("yes"))
           {
               total=total+i3;
           }
           if(f6.equals("yes"))
           {
               total=total+i4;
           }
           ps.setString(7,f);
           ps.setInt(8,i1);
           ps.setInt(9,i2);
           ps.setInt(10,i3);
           ps.setInt(11,i4);
           ps.setString(12,req.getParameter("query"));
           
           
           ps.setString(13,f2);
           
           
           
           
           
           total=total*k5;
           ps.setInt(14,total);
           
           
            ps.execute();
            if(p!=0){
            RequestDispatcher rd=req.getRequestDispatcher("book.jsp");
            rd.include(req, res);  
       
            out.println("<html>\n" +
"<body>\n" +
"<script>\n" +
"alert(\"Your Booking is Successfully and \\n Your TransactionID <b> "+f2+"</b> and Amount is  <b>"+total+" </b> \");\n" +
"</script>\n" +
"</body>\n" +
"</html>");
          
            }
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
