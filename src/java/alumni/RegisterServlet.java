/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package alumni;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alejandrok
 */
public class RegisterServlet extends HttpServlet {

    Controller ctrl = new Controller();
    
    String firstName;
    String lastName;
    String diplomaLastName;
    String email;
    String password;
    String password2;
    String graduationYear;
    String degree;
    String major;
    
 
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
        
          String error = "";
     
            
        if (firstName.equals("") || firstName.equals("")) {
            error += "Name cannot be left blank.  ";
        
        }
       
        if (ctrl.doesEmailExist(email)) {
            error += "Email already exists.";
        }
        
        
        if (diplomaLastName.equals("")) {  
            diplomaLastName = lastName;
        }
        
        if (password.equals("") || password2.equals("")) {
            error += "Please enter a password.  ";
        }
        
        if (!password.equals(password2)) {
            error += "Passwords are not equal. Please Try again.  ";
           
        }
        
        
        if (error.isEmpty()) {
        ctrl.registerUser(firstName, lastName,  email, password, graduationYear, degree, major);
        response.sendRedirect("log_in.jsp");
        }
        
        else {
       
            response.sendRedirect("sign_up.jsp?error=" + error);
            
            
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
        
    
        firstName = request.getParameter("firstName");
        lastName = request.getParameter("lastName");
        diplomaLastName = request.getParameter("lastNameDiploma");
        email = request.getParameter("email");
        password = request.getParameter("password");
        password2 = request.getParameter("password2");
        graduationYear = request.getParameter("yearGraduated");
        degree = request.getParameter("degree");
        major = request.getParameter("major");
        
        
        System.out.println(firstName);
        System.out.println(lastName);
        System.out.println(diplomaLastName);
        System.out.println(email);
        System.out.println(password);
        System.out.println(password2);
        System.out.println(degree);
        System.out.println(major);
    
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

}
