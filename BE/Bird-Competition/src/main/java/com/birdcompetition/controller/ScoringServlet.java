/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.birdcompetition.controller;

import com.birdcompetition.birdInContest.BirdContestDAO;
import com.birdcompetition.birdInContest.BirdContestDTO;
import com.birdcompetition.scoring.ScoringDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 *
 * @author Danh
 */
@WebServlet(name = "ScoringServlet", urlPatterns = {"/ScoringServlet"})
public class ScoringServlet extends HttpServlet {

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
//        String[] birdL = request.getParameterValues("txtBirdID");
        String[] ordersL = request.getParameterValues("txtOder");
        int matchId = Integer.parseInt(request.getParameter("txtMatchId"));
        String url = "AdminPage/ConfirmUpdate.jsp";
        String msg = "";

        HttpSession session = request.getSession();

        try {
            BirdContestDAO dao = new BirdContestDAO();

            if (!dao.checkValidOrder(ordersL)) {
                url = "UpdateResultServlet";
                msg = "fail";
            } else {
                dao.getJoiner(matchId);
                List<BirdContestDTO> joiner = dao.getList();
                for (int i = 0; i < joiner.size(); i++) {
                    int order = Integer.parseInt(ordersL[i]);
                    BirdContestDTO bird = joiner.get(i);
                    bird.setOrder(order);
                }

                ScoringDAO ScoringDao = new ScoringDAO();
                List<BirdContestDTO> result = ScoringDao.Scoring(joiner);

                request.setAttribute("SCORING", result);
                msg = "success";

            }
            request.setAttribute("Message", msg);

            session.setAttribute("Message", msg);

//            System.out.println("sau cap nhat");
//            for (BirdContestDTO birdContestDTO : joiner) {
//                System.out.println(birdContestDTO.toString());
//            }
        } catch (SQLException ex) {
            Logger.getLogger(ScoringServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ScoringServlet.class.getName()).log(Level.SEVERE, null, ex);
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
