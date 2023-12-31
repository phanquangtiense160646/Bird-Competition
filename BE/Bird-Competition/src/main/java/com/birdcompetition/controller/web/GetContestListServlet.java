/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.birdcompetition.controller.web;


import com.birdcompetition.bird.BirdDTO;
import com.birdcompetition.contest.ContestDAO;
import com.birdcompetition.contest.ContestDTO;
import com.birdcompetition.model.User;
import com.birdcompetition.schedule.ScheduleDTO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
@WebServlet(name = "GetContestListServlet", urlPatterns = {"/GetContestListServlet"})
public class GetContestListServlet extends HttpServlet {

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
        String url = "matchhistory.jsp";
        try {
            HttpSession session = request.getSession();
            List<ContestDTO> contestList;
            
                ContestDAO dao = new ContestDAO();
                User user = (User) session.getAttribute("USER");
                dao.getContestList(user.getUserName());
                contestList = dao.getContestList();
                session.setAttribute("OWN_CONTEST", contestList);
            
        } catch (SQLException ex) {
            log("ScheduleServlet_SQL: " + ex.getMessage());
        } catch (ClassNotFoundException ex) {
            log("ScheduleServlet_ClassNotFound: " + ex.getMessage());
        }finally {
//            response.sendRedirect(url);
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
