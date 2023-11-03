/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.birdcompetition.controller.web;

import com.birdcompetition.bird.BirdDAO;
import com.birdcompetition.bird.BirdDTO;
import com.birdcompetition.schedule.ScheduleDAO;
import com.birdcompetition.schedule.ScheduleDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "PostLoginServlet", urlPatterns = {"/PostLoginServlet"})
public class PostLoginServlet extends HttpServlet {

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
        String url = "postLogin.jsp";
        try {

            HttpSession session = request.getSession();
            List<ScheduleDTO> listSchedule = (List<ScheduleDTO>) session.getAttribute("SCHEDULE");
            if (listSchedule == null) {
                //Schedule
                ScheduleDAO scheduleDao = new ScheduleDAO();
                scheduleDao.getSchedule();
                listSchedule = scheduleDao.getList();
                session.setAttribute("SCHEDULE", listSchedule);
            }

            BirdDAO birdDao = new BirdDAO();
            birdDao.resetBirdList();
            birdDao.displayLeaderboard();
            List<BirdDTO> listBird = birdDao.getBirdList();
            System.out.println("leaderboard size " + listBird.size());
            session.setAttribute("LEADER_BOARD", listBird);

        } catch (SQLException ex) {
            log("PostLoginServlet_SQL: " + ex.getMessage());
        } catch (ClassNotFoundException ex) {
            log("PostLoginServlet_ClassNotFound: " + ex.getMessage());

        } catch (NamingException ex) {
            Logger.getLogger(PostLoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            response.sendRedirect(url);
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
