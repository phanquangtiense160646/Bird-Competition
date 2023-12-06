/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.birdcompetition.controller;

import com.birdcompetition.dal.DAO;
import com.birdcompetition.dal.RegistrationCreateError;
import com.birdcompetition.member.MemberDAO;
import com.birdcompetition.member.MemberDTO;
import com.birdcompetition.user.UserDAO;
import com.birdcompetition.user.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.Registration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 84366
 */
@WebServlet(name = "AddMemberServlet", urlPatterns = {"/AddMemberServlet"})
public class AddMemberServlet extends HttpServlet {

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
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        String gmail = request.getParameter("gmail");
        String role = request.getParameter("role");
        String url = "";
        RegistrationCreateError errors = new RegistrationCreateError();
        try {
            UserDAO dao = new UserDAO();
            UserDTO dto = new UserDTO(name, password, gmail, 0, true);
            boolean result = dao.insertAccount(dto);
            if (result) {
                url = "addnewaccount.jsp";
                String msg = "success";
                request.setAttribute("msg", msg);
            } else {
                String msg = "fail";
                request.setAttribute("msg", msg);
            }

        } catch (SQLException ex) {
            log("Addmember_SQL " + ex.getMessage());
            errors.setUsernameIsExisted(name + " is existed");
            request.setAttribute("CREATE_ERRORS", errors);
        } catch (NamingException ex) {
            Logger.getLogger(AddMemberServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddMemberServlet.class.getName()).log(Level.SEVERE, null, ex);
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