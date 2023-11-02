package com.birdcompetition.controller;

import com.birdcompetition.schedule.ScheduleError;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "AddScheduleServlet", urlPatterns = {"/AddScheduleServlet"})
public class AddScheduleServlet extends HttpServlet {

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
        String date = request.getParameter("date");
        String name = request.getParameter("txtContestName");
        String minPoint = request.getParameter("minPoint");
        String maxPoint = request.getParameter("maxPoint");
        String place = request.getParameter("cboBird");
        String factor = request.getParameter("factor");
        String maxPar = request.getParameter("maxPar");
        String fee = request.getParameter("fee");
        boolean foundErr = false;
        ScheduleError error = new ScheduleError();

        String url = "AdminPage/createSchedule.jsp";
        try {
            if (date == null) {
                foundErr = true;
                error.setDateErr("Date không được trống");
            }else {
                LocalDate date1 = LocalDate.now();
                LocalDate date2 = LocalDate.parse(date);
                long daysBetween = ChronoUnit.DAYS.between(date1, date2);
                if(daysBetween < 6) {
                    foundErr = true;
                    error.setDateErr("Ngày phải cách hiện tại 7 ngày");
                }
            }
            if (name.length() < 6 || name.length() > 50) {
                foundErr = true;
                error.setContestNameErr("Tên cuộc thi 6 - 50");
            }
            if(minPoint == null || maxPoint == null) {
                foundErr = true;
                error.setMinPointErr("Min point không được trống");
                error.setMaxPointErr("Max point không được trống");
            }else {
                int min = Integer.parseInt(minPoint);
                int max = Integer.parseInt(maxPoint);
                if (min < 0 || max < 0){
                    foundErr = true;
                }
            }

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
