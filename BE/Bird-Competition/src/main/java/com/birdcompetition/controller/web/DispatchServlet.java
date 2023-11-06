package com.birdcompetition.controller.web;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class DispatchServlet extends HttpServlet {

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
        String button = request.getParameter("btAction");
        String url = "";
        try {
            if (button == null) {
                url = "StartServlet";
            } else if (button.equals("Home")) {
                url = "StartServlet";
            } else if (button.equals("PostLogin")) {
                url = "PostLoginServlet";
            } else if (button.equals("LeaderBoard")) {
                url = "LeaderBoardServlet";
            } else if (button.equals("SearchLB")) {
                url = "SearchLeaderBoardServlet";
            } else if (button.equals("Current")) {
                url = "HappeningMatchServlet";
            } else if (button.equals("Preparing")) {
                url = "PreparingMatchServlet";
            } else if (button.equals("UpdateResult")) {
                url = "UpdateResultServlet";
            } else if (button.equals("Confirm")) {
                url = "ConfirmMatchServlet";
            } else if (button.equals("MatchResult")) {
                url = "UpdateResultServlet";
            } else if (button.equals("schedule")) {
                url = "ScheduleServlet";
            } else if (button.equals("AddBird")) {
                url = "AddBirdServlet";
            } else if (button.equals("CheckCode")) {
                url = "CheckInServlet";
            } else if (button.equals("CheckIn")) {
                url = "PrepareCheckInServlet";
            } else if (button.equals("cRegister")) {
                url = "CRegisterServlet1";
            } else if (button.equals("MatchHistory")) {
                url = "GetContestListServlet";
            } else if (button.equals("createSchedule")) {
                url = "AddScheduleServlet";
            } else if (button.equals("PaymentHistory")) {
                url = "PaymentHistoryServlet";
            }  else if (button.equals("Membership")) {
                url = "MembershipServlet";
            } else if (button.equals("VipRegis")) {
                url = "MembershipRegisterServlet";
            } else if (button.equals("VipUpdate")) {
                url = "MembershipUpdateServlet";
            } else if (button.equals("Logout")) {
                url = "LogoutServlet";
            } else if (button.equals("BirdList")) {
                url = "GetBirdServlet";
            } else if (button.equals("ManageSchedule")) {
                url = "ManageSchedule";
            } else if (button.equals("UserProfile")) {
                url = "UserProfileServlet";
            } else if (button.equals("Update Profile")) {
                url = "UpdateProfileServlet";
            } else if (button.equals("BirdProfile")) {
                url = "GetBirdInfoServlet";
            } else if (button.equals("PostPayment")) {
                url = "PostPayment";
            } else if (button.equals("ShowAllBirds")) {
                url = "GetBirdServlet";
            } else if (button.equals("DeleteBird")) {
                url = "DeleteBirdServlet";
            } else if (button.equals("Blog")) {
                url = "NewServlet";
            } else if (button.equals("Rule")) {
                url = "RuleServlet";
            } else if (button.equals("FeedBack")) {
                
            } else if (button.equals("Dashboard")) {
                url = "PaymentAdminServlet";
            } else if (button.equals("Add Image")) {
                url = "UploadPhotoServlet";

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
