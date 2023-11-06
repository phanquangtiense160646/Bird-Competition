/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.birdcompetition.controller;

import com.birdcompetition.bird.BirdDAO;
import com.birdcompetition.bird.BirdDTO;
import com.birdcompetition.feedback.FeedBackDAO;
import com.birdcompetition.model.User;
import com.birdcompetition.payment.PaymentDAO;
import com.birdcompetition.payment.PaymentDTO;
import com.birdcompetition.schedule.ScheduleDAO;
import com.birdcompetition.schedule.ScheduleDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.ejb.Schedule;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MSI
 */
@WebServlet(name = "PaymentAdminServlet", urlPatterns = {"/PaymentAdminServlet"})
public class PaymentAdminServlet extends HttpServlet {

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
        String url = "AdminPage/index.jsp";
        try {
            HttpSession session = request.getSession();
            List<PaymentDTO> paymentList;
            List<BirdDTO> birdList;
            List<ScheduleDTO> scheduleList;

            PaymentDAO dao = new PaymentDAO();
            BirdDAO birddao = new BirdDAO();
            ScheduleDAO scheduledao = new ScheduleDAO();
            User user = (User) session.getAttribute("USER");
            FeedBackDAO fbdao = new FeedBackDAO();
            
            dao.getPaymentList(user.getUserName());
           
            scheduleList = scheduledao.getList();
                    
            paymentList = dao.getPaymentList_price();
            birdList = birddao.getBirdList();
            
            
            session.setAttribute("OWN_PAYMENT", paymentList);
            //Total Price
            int totalPrice = 0;
            double actualprofit = 0;
            for (PaymentDTO paymentDTO : paymentList) {
                 totalPrice = totalPrice + paymentDTO.getPrice();
                request.setAttribute("TOTAL", totalPrice);
            }
            //Total accPrice
            actualprofit = totalPrice - (totalPrice * 0.2);
            request.setAttribute("REAL_PROFIT", actualprofit);
            //Total member
            int totalmem = paymentList.size();
            request.setAttribute("LISTMEM", totalmem);
            //Total schedule
            int total = scheduledao.getParticipants();
            request.setAttribute("SCHEDULELIST",total);
            //Total bird
            int totalbird =  birddao.getBirds();
            request.setAttribute("LISTBIRD", totalbird);
            //Total feedback
            int totalfb = fbdao.getParticipants();
            request.setAttribute("FEEDBACK", totalfb);
            //Total Order
            int totalorder = dao.getParticipants();
            request.setAttribute("ORDER", totalorder);
            
           
            

        } catch (SQLException ex) {
            log("ScheduleServlet_SQL: " + ex.getMessage());
        } catch (ClassNotFoundException ex) {
            log("ScheduleServlet_ClassNotFound: " + ex.getMessage());
        } finally {
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
