/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.birdcompetition.controller.web;

import com.birdcompetition.dal.DAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.birdcompetition.model.User;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 84366
 */
@WebServlet(name = "LoginControl", urlPatterns = {"/login"})
public class LoginControl extends HttpServlet {

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
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String url = "Login2.jsp";

        try {
            if (username != null && password != null) {
                DAO dao = new DAO();
                User result = dao.checkLogin(username, password);

                if (result != null) {
                    HttpSession session = request.getSession();
                    if (result.getUserRole() == 4) {
                        session.setAttribute("USER", result);
                        url = "DispatchServlet?btAction=PostLogin";
                    } else if (result.getUserRole() == 2 || result.getUserRole() == 3) {
                        session.setAttribute("USER", result);
                        url = "DispatchServlet?btAction=Dashboard";
                    } else if (result.getUserRole() == 1) {
                        session.setAttribute("USER", result);
                        url = "DispatchServlet?btAction=Dashboard";
                    }

                } else {
                    String msg = "Incorrect Username or Password";
                    request.setAttribute("msg", msg);
                }
            }

        } catch (SQLException ex) {
            log("Login_SQL: " + ex.getMessage());
        } catch (ClassNotFoundException ex) {
            log("Login_ClassNotFound: " + ex.getMessage());
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
