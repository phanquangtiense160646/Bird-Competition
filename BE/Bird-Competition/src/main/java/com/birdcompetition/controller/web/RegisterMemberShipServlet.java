/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.birdcompetition.controller;

import com.birdcompetition.membership.MembershipDAO;
import com.birdcompetition.membership.MembershipDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegisterMemberShipServlet", urlPatterns = {"/RegisterMemberShipServlet"})
public class RegisterMemberShipServlet extends HttpServlet {

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
        
        String url = "memberShip.html";
        
        try{
            MembershipDAO dao = new MembershipDAO();
            String memberId = request.getParameter("name");
            Date dateSignup = SimpleDateFormat.format(request.getParameter("dos"));
            String type = request.getParameter("type");
            String des = request.getParameter("description");
            
            
            MembershipDTO member = dao.checkRegister(memberId);
            if(member != null){
                request.setAttribute("ERROR", "Tài khoản đã đăng ký gói VIP");
            }
            
            boolean check = dao.registerMembership(memberId, dateSignup, true, type, des);
            if(check){
                request.setAttribute("MESSAGE", "Đăng ký thành công gói thành viên");
                url = "memberShip.html";
            }else{
                request.setAttribute("MESSAGE", "Chưa đăng ký thành công gói thành ");
                url = "memberShip.html";
            }
        }catch(Exception e){
            log("Error" + e.toString());
        }finally{
            request.getRequestDispatcher(url).forward(request, response);
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
