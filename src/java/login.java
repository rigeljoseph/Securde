/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lenovo
 */
@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet {

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
            throws ServletException, IOException, SQLException {
   
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
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
        
    PrintWriter out = response.getWriter();
response.setContentType("text/html;charset=UTF-8");

                String email=request.getParameter("email");
		String pw=request.getParameter("pword");
		
		// Connect to mysql and verify username password
		
		try {
                                      

			 Class.forName("com.mysql.jdbc.Driver").newInstance();
            
		 // loads driver
		Connection c = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3307/securde", "root", "1234"); // gets a new connection
 
		PreparedStatement ps = (PreparedStatement) c.prepareStatement("select * from users where email='" + email +  "' and pword='" +pw+"'");
	//PreparedStatement ps = (PreparedStatement) c.prepareStatement("select count(*) from users where email='rigel@gmail.com' and pword='1234567'");
		ResultSet rs = ps.executeQuery();
              int count=0;
              String usertype="usertype";
              
                 
        if(rs.next()){
           count= 1;
           usertype= rs.getString(usertype);
                   
              }
                if(count >0 && usertype.equals("admin")){
                    

		response.sendRedirect("admin.jsp");
                }
                        
                else if(count >0 && usertype.equals("customer")){
                    

		response.sendRedirect("home.jsp");
                }
                else{
                                    

                 response.sendRedirect("index.jsp");
                
                }
		return;
		} catch (ClassNotFoundException | SQLException e) {
                                       StringWriter sw = new StringWriter();
PrintWriter ps = new PrintWriter(sw);
e.printStackTrace(ps);
String sStackTrace = sw.toString(); // stack trace as a string
out.println(sStackTrace);

			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
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
