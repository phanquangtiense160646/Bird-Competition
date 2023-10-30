package com.birdcompetition.controller.web;

import com.birdcompetition.bird.BirdContestDTO;
import com.birdcompetition.bird.BirdDTO;
import com.birdcompetition.registerCompetition.CRegisterDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;
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
@WebServlet(name = "CRegisterServlet", urlPatterns = {"/CRegisterServlet"})
public class CRegisterServlet extends HttpServlet {

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
        String birdId = request.getParameter("cboBird");
        String contestId = request.getParameter("hiddenContestId");
        String url = "ScheduleServlet";
        int count = 0;
        String mes;
        try {
            HttpSession session = request.getSession();
            if (birdId != null) {
                int id = Integer.parseInt(birdId);
                int contestID = Integer.parseInt(contestId);
                CRegisterDAO dao = new CRegisterDAO();
                dao.getBirdInContest(contestID);
                List<BirdContestDTO> birdContestList = dao.getListBirdContest();
                /*Check existence Bird*/
                if (birdContestList != null) {
                    for (BirdContestDTO birdContestDTO : birdContestList) {
                        if (birdContestDTO.getBirdId() == id) {
                            count++;
                        }
                    }
                }
                //insert
                if (count == 0) {
                    int beforePoint = 0;
                    List<BirdDTO> listBird = (List<BirdDTO>) session.getAttribute("OWN_BIRD");
                    for (BirdDTO birdDTO : listBird) {
                        if (birdDTO.getBirdID() == id) {
                            beforePoint = birdDTO.getPoint();
                            break;
                        }
                    }
                    String checkInCode = UUID.randomUUID().toString().substring(0, 10);
                    BirdContestDTO dto = new BirdContestDTO(id, contestId,
                            0, beforePoint, 0, true, false, checkInCode);
                    dao.cRegisterInsert(dto);
                    mes = "success";
                } else {
                    mes = "error";
                }
            } else {
                mes = "fail";
            }
            request.setAttribute("MES", mes);
        } catch (SQLException ex) {
            log("CRegister_SQL: " + ex.getMessage());
        } catch (ClassNotFoundException ex) {
            log("CRegister_ClassNotFound: " + ex.getMessage());
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
