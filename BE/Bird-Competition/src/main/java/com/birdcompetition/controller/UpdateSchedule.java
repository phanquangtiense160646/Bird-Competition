/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.birdcompetition.controller;

import com.birdcompetition.schedule.ScheduleDAO;
import com.birdcompetition.schedule.ScheduleDTO;
import com.birdcompetition.schedule.ScheduleError;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "UpdateSchedule", urlPatterns = {"/UpdateSchedule"})
public class UpdateSchedule extends HttpServlet {

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
        String minPoint = request.getParameter("txtminPoint");
        String maxPoint = request.getParameter("txtmaxPoint");
        String place = request.getParameter("cboBird");
        String factor = request.getParameter("txtfactor");
        String maxPar = request.getParameter("txtmaxPar");
        String maxBird = request.getParameter("txtmaxBirdJoin");
        String fee = request.getParameter("txtfee");
        String scheduleId = request.getParameter("hidContestId");
        
        boolean foundErr = false;
        ScheduleError errors = new ScheduleError();
        double dfactor = 0;
        int min = 0, max = 0, maxP = 0, maxB = 0;

        String url = "AdminPage/editSchedule.jsp";
        try {
                if (date.isEmpty()) {
                    foundErr = true;
                    errors.setDateErr("Date không được trống");
                } else {
                    LocalDate date1 = LocalDate.now();
                    LocalDate date2 = LocalDate.parse(date);
                    long daysBetween = ChronoUnit.DAYS.between(date1, date2);
                    if (daysBetween < 6) {
                        foundErr = true;
                        errors.setDateErr("Ngày phải cách hiện tại 7 ngày");
                    }
                }//end check date
                if (name.length() < 6 || name.length() > 50) {
                    foundErr = true;
                    errors.setContestNameErr("Tên cuộc thi 6 - 50");
                }//end check name
                if (minPoint.isEmpty() || maxPoint.isEmpty()) {
                    foundErr = true;
                    errors.setMinPointErr("Min point không được trống");
                    errors.setMaxPointErr("Max point không được trống");
                } else {
                    min = Integer.parseInt(minPoint);
                    max = Integer.parseInt(maxPoint);
                    if (min < 0 || max < 0) {
                        foundErr = true;
                        errors.setMinPointErr("Min point không được < 0");
                        errors.setMaxPointErr("Max point không được < 0");
                    } else if (max - min > 300) {
                        errors.setMinPointErr("Min point - Max point chêch lệch < 300");
                        errors.setMaxPointErr("Min point - Max point chêch lệch < 300");
                    }
                }//end check min max point
                if (maxPar.isEmpty()) {
                    foundErr = true;
                    errors.setMaxParErr("Số lượng tham gia không được trống");
                } else {
                    maxP = Integer.parseInt(maxPar);
                    if (maxP > 20) {
                        foundErr = true;
                        errors.setMaxParErr("Số lượng tham gia <= 20");
                    }
                }//end check maxPar
                if (factor.isEmpty()) {
                    foundErr = true;
                    errors.setFactorErr("Hệ số không được trống");
                } else {
                    dfactor = Double.parseDouble(factor);
                    if (dfactor > 2 || dfactor < 0) {
                        foundErr = true;
                        errors.setFactorErr("0 < Hệ số <= 2");
                    }
                }//end check fator
                if (maxBird.isEmpty()) {
                    foundErr = true;
                    errors.setMaxBirdInContestErr("Số lượng chim tham gia không được trống");
                } else {
                    maxB = Integer.parseInt(maxBird);
                    if (maxB > 3 || maxB < 0) {
                        foundErr = true;
                        errors.setMaxBirdInContestErr("0 < Số lượng chim tham gia <= 3");
                    }
                }//end check maxBird
                if (fee.isEmpty()) {
                    foundErr = true;
                    errors.setFeeErr("Phí không được trống");
                } else if(fee.length() <5) {
                    errors.setFeeErr("Phí phải lớn hơn hoặc bằng 10.000(vnd)");
                } 
                if (place == null) {
                    foundErr = true;
                    errors.setPlaceErr("Địa điểm không được trống");
                }
                if (foundErr) {
                    request.setAttribute("CREATE_ERRORS", errors);
                } else {
                    //2. call DAO
                    ScheduleDAO dao = new ScheduleDAO();
                    Date sqlDate = Date.valueOf(LocalDate.parse(date));
                    int feee = Integer.parseInt(fee);
                    int contestId = Integer.parseInt(scheduleId);
                    ScheduleDTO dto = new ScheduleDTO(contestId, name, sqlDate, place, true, dfactor,
                            min, max, feee, "manager", place, 5, maxP, maxBird);
                    boolean result = dao.contestUpdate(dto);
                    //3. Process Result
                    if (result) {
                        url = "ManageSchedule?pending=1";
                        request.setAttribute("MES", "success");
                    }//create successful
                }// no error occur
            

        } catch (SQLException ex) {
            log("UpdateSchedule_SQL: " + ex.getMessage());
        } catch (ClassNotFoundException ex) {
            log("UpdateSchedule_ClassNotFound: " + ex.getMessage());
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
