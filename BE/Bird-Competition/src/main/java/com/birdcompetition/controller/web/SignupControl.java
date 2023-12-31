/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.birdcompetition.controller.web;

import com.birdcompetition.dal.DAO;
import com.birdcompetition.dal.RegistrationCreateError;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.birdcompetition.model.User;

/**
 *
 * @author 84366
 */
@WebServlet(name = "Signup", urlPatterns = {"/signup"})
public class SignupControl extends HttpServlet {

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

        String user = request.getParameter("txtUsername");
        String pass = request.getParameter("txtPassword");
        String re_pass = request.getParameter("txtConfirm");
        boolean foundErr = false;
        String url = "dangKi.jsp";
        RegistrationCreateError errors = new RegistrationCreateError();

        try {
            //1. Check all user's error
            if (user != null && pass != null && re_pass != null){
                if (user.trim().length() < 6 || user.trim().length() > 20) {
                foundErr = true;
                errors.setUsernameLengthErr("Username have to 6-20");
            }
            if (pass.trim().length() < 8 || pass.trim().length() > 30) {
                foundErr = true;
                errors.setPasswordLengthErr("Password 8-30");
            } else if (!re_pass.trim().equals(pass.trim())) {
                foundErr = true;
                errors.setConfirmLengthErr("Confirm must match password");
            }
            if (foundErr) {
                request.setAttribute("CREATE_ERRORS", errors);
            } else {
                //2. call DAO
                DAO dao = new DAO();

                User u = new User(user, pass, "", 4, user, "", "", "", "", "", "");
                boolean result = dao.createAccount(u);
                //3. Process Result
                if (result) {
                    url = "login";
                }//create successful
            }// no error occur
            }

        } catch (SQLException ex) {
            log("CreateNewAccount_SQL " + ex.getMessage());
            errors.setUsernameIsExisted(user + " is existed");
            request.setAttribute("CREATE_ERRORS", errors);

        } catch (ClassNotFoundException ex) {
            log("CreateNewAccount_ClassNotFound" + ex.getMessage());
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
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
