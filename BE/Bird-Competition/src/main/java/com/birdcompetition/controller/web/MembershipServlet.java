/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.birdcompetition.controller.web;

import com.birdcompetition.membership.MembershipDAO;
import com.birdcompetition.membership.MembershipDTO;
import com.birdcompetition.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.bean.SessionScoped;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Danh
 */
@WebServlet(name = "MembershipServlet", urlPatterns = {"/MembershipServlet"})
public class MembershipServlet extends HttpServlet {

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
        HttpSession session = request.getSession();
        try {
            User user = (User) session.getAttribute("USER");
            String memberId = user.getIdMember();
//            System.out.println("viptype: " + user.getVipType());

            MembershipDAO dao = new MembershipDAO();
            if (user.getVipType() != null) {
                MembershipDTO membership = dao.getMember(memberId);
                request.setAttribute("EXPIRED", membership.getDayExpired());

                if (!dao.checkSession(memberId)) {
                    user.setVipType(null);
                    //hamf set trong DB

                    session.setAttribute("USER", user);
                    request.setAttribute("Message", "overdate");
                }

            }
            int vip2 = 0;
            int vip3 = 0;
            if (user.getVipType() != null) {
                vip2 = dao.updatePack(memberId, "2");
                vip3 = dao.updatePack(memberId, "3");
            }
            request.setAttribute("VIP2", vip2);
            request.setAttribute("VIP3", vip3);

        } catch (SQLException ex) {
            Logger.getLogger(MembershipServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MembershipServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher("Membership.jsp");
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
