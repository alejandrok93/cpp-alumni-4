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
import javax.servlet.http.HttpSession;

/**
 *
 * @author alejandrok
 */
public class UpdateAccountServlet extends HttpServlet {
    
    Controller ctrl = new Controller();
    String phone;
    String desc;
    String employer;
    String position;
    String workPhone;
    String institution;
    String degree;
    String major;
    String graduationYear;
            
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
       
        HttpSession session = request.getSession();
        
        
        System.out.println("req.getparameter  : " + request.getParameter("type"));
        String t = request.getParameter("type").toString();
        System.out.println(" t : " + t);
        
        
        if (t.equals("personal_info")) {
        //UPDATE PERSONAL INFO
        phone = request.getParameter("phone");
        desc = request.getParameter("desc");
        
        String email = (String) session.getAttribute("email");
        ctrl.updatePersonalInfo(email, phone, desc);
        response.sendRedirect("profile.jsp");
        
        }
        
        if (t.equals("work_info")) {
        //UPDATE WORK INFO
        employer = request.getParameter("employer");
        position = request.getParameter("position");
        workPhone = request.getParameter("workPhone");
        
        String email = (String) session.getAttribute("email");
        ctrl.updateWorkInfo(email, employer, position, workPhone);
        response.sendRedirect("profile.jsp");
        }
        
        
        if (t.equals("education_info")) {
        //UPDATE EDUCATION INFO
        institution = request.getParameter("institution");
        degree = request.getParameter("degree");
        major = request.getParameter("major");
        graduationYear = request.getParameter("graduationYear");
        
        String email = (String) session.getAttribute("email");
        ctrl.updateEducationInfo(email, graduationYear, degree, major, institution);
        response.sendRedirect("profile.jsp");
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

}
