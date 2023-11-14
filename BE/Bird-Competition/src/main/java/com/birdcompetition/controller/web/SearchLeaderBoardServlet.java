package com.birdcompetition.controller.web;

import com.birdcompetition.bird.BirdDAO;
import com.birdcompetition.bird.BirdDTO;
import com.birdcompetition.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
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
 * @author Danh
 */
@WebServlet(name = "SearchLeaderBoardServlet", urlPatterns = {"/SearchLeaderBoardServlet"})
public class SearchLeaderBoardServlet extends HttpServlet {

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
//        String url = "LeaderBoardServlet";
        String url = "leaderboard.jsp";

        String searchValue = request.getParameter("txtSearchValue");
        try {
            BirdDAO dao = new BirdDAO();
//                dao.searchBird(searchValue);
//                List<BirdDTO> searchList = dao.getBirdList();
//                request.setAttribute("SEARCH_RS", searchList);
//                dao.resetBirdList();
            dao.resetBirdList();
            dao.getLeaderboard();
            List<BirdDTO> leaderboard = dao.getBirdList();
            request.setAttribute("LEADER_BOARD", leaderboard);
            if (!searchValue.trim().isEmpty()) {
                List<BirdDTO> searchList = dao.search(searchValue);
                request.setAttribute("SEARCH_RS", searchList);
            }
            List<BirdDTO> persionalLb = new ArrayList<>();
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("USER");
            if (user != null) {
                for (BirdDTO bird : leaderboard) {
                    if (bird.getMemberID().equals(user.getIdMember())) {
                        persionalLb.add(bird);
                    }
                }
                request.setAttribute("PERSIONAL_LB", persionalLb);
                
            }  else if (user == null) {
                url = "leaderboard_pre.jsp";
            }


        } catch (SQLException ex) {
            Logger.getLogger(SearchLeaderBoardServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SearchLeaderBoardServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NamingException ex) {
            Logger.getLogger(SearchLeaderBoardServlet.class.getName()).log(Level.SEVERE, null, ex);
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
