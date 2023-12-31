/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.birdcompetition.vnpay;

import com.birdcompetition.bird.BirdContestDTO;
import com.birdcompetition.model.User;
import com.birdcompetition.payment.PaymentDAO;
import com.birdcompetition.registerCompetition.CRegisterDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
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
@WebServlet(name = "PostPayment", urlPatterns = {"/PostPayment"})
public class PostPayment extends HttpServlet {

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

        String type = request.getParameter("payType");
        double cost = Double.parseDouble(request.getParameter("cost"));

//        String content = request.getParameter("paymentContent");
        String url = "ScheduleServlet";
        try {
            User user = (User) session.getAttribute("USER");
            PaymentDAO paymentDao = new PaymentDAO();
            String memberId = user.getIdMember();
            String orderName = "";

            String trueType = type.substring(0, 4);
            if (trueType.equals("DKTD")) {
                CRegisterDAO dao = new CRegisterDAO();
                String checkInCode = UUID.randomUUID().toString().substring(0, 10);
                int id = (int) session.getAttribute("BIRD_ID");
                int beforePoint = (int) session.getAttribute("BEFORE_POINT");
                String contestId = (String) session.getAttribute("CONTEST_ID");

                BirdContestDTO dto = new BirdContestDTO(id, contestId,
                        0, beforePoint, 0, true, false, checkInCode);
                dao.cRegisterInsert(dto);
                String mes = "success";
                request.setAttribute("MES", mes);
                url = "ScheduleServlet";
                orderName = "Đăng ký thi đấu";
            } else if (trueType.equals("DKMB")) {
                url = "MembershipRegisterServlet";
                orderName = "Đăng ký membership";

            } else if (trueType.equals("UDMB")) {
                url = "MembershipUpdateServlet";
                orderName = "Nâng cấp membership";

            }

            paymentDao.CreatePayment(memberId, cost, orderName);

        } catch (SQLException ex) {
            Logger.getLogger(PostPayment.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PostPayment.class.getName()).log(Level.SEVERE, null, ex);
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
