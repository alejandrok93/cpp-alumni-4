/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package alumni;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.*;


/**
 *
 * @author alejandrok
 */
public class LoginServlet extends HttpServlet {

    //declare variables
    String email;
    String password;
    
    //instanciate controller object
    Controller ctrl = new Controller();
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void getUser(String email) {
        //call controller method to get user data
        
        
        
        //
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //response.setContentType("text/html;charset=UTF-8");
       
         HttpSession session = request.getSession();
         
         
         
        email = request.getParameter("email");
     password = request.getParameter("password");
    
     
    boolean emailExists =  ctrl.doesEmailExist(email);
    boolean passExists = ctrl.doesPasswordExist(email, password);
        
     
    if (emailExists && passExists) {
       
        synchronized(session) {
            session.setAttribute("email", email);
        }
        
        response.sendRedirect("home.jsp");
        
    }
    
    else {
  
        String error = "Email or Password not found. Try again";
        response.sendRedirect("log_in.jsp?error=" + error);
 
    }

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    
     
    
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



public void connectToDB() {
//    try {
//    String DBurl = "jdbc:mysql://localhost:3306/cpp-alumni";
//    String user = "root";
//    String pass = "sesame";
//    
//   
//    Connection conn = DriverManager.getConnection(DBurl, user, pass);
//   
//    if (conn.isValid(10)) {
//        System.out.println("Connection succesful!");
//    }
//    
//    else {
//        System.out.println("Connection failed");
//    }
//    Statement stmt = conn.createStatement();
//    
//    ResultSet users  = stmt.executeQuery("SELECT * FROM users");
//    System.out.print(users);
//    
//    
//    
//    }
//    
//    catch (SQLException e) {
//        for (Throwable t : e )
//            t.printStackTrace();
//    }
//    
    
}

}



