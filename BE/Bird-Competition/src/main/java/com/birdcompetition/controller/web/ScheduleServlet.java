package com.birdcompetition.controller.web;

import com.birdcompetition.bird.BirdDAO;
import com.birdcompetition.bird.BirdDTO;
import com.birdcompetition.model.User;
import com.birdcompetition.schedule.ScheduleDAO;
import com.birdcompetition.schedule.ScheduleDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
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

/**
 *
 * @author Admin
 */
@WebServlet(name = "ScheduleServlet", urlPatterns = {"/ScheduleServlet"})
public class ScheduleServlet extends HttpServlet {

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
        String url = "schedule.jsp";
        try {
            HttpSession session = request.getSession();
            /*lich thi dau*/
            ScheduleDAO scheduleDao = new ScheduleDAO();
            scheduleDao.getSchedule();
            List<ScheduleDTO> listSchedule = scheduleDao.getList();
            for (ScheduleDTO scheduleDTO : listSchedule) {
                if (scheduleDTO.getStatusOfContest() == 1) {
                    LocalDate date1 = LocalDate.now();
                    LocalDate date2 = scheduleDTO.getDate().toLocalDate();
                    long daysBetween = ChronoUnit.DAYS.between(date1, date2);
                    int contestId = scheduleDTO.getId();
                    if (scheduleDTO.getCurrentPar() < (scheduleDTO.getMaxPar() / 2) && daysBetween <= 3) {
                        scheduleDao.setStatus(contestId, 4);
                    } else if (daysBetween <= 3 || scheduleDTO.getCurrentPar() == scheduleDTO.getMaxPar()) {
                        scheduleDao.setStatus(contestId, 2);
                    }

                }
            }
            //get again
            scheduleDao.getSchedule();
            listSchedule = scheduleDao.getList();
            session.setAttribute("SCHEDULE", listSchedule);
            /*danh sach chim dk*/
            BirdDAO dao = new BirdDAO();
            User user = (User) session.getAttribute("USER");
            dao.getBirdByMemberId1(user.getIdMember());
            List<BirdDTO> birdList = dao.getBirdList();
            session.setAttribute("OWN_BIRD", birdList);

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
