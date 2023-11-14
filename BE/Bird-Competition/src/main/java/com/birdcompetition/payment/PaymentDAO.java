/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.payment;


import com.birdcompetition.birdInContest.BirdContestDTO;
import com.birdcompetition.contest.ContestDTO;
import com.birdcompetition.product.ProductDTO;
import com.birdcompetition.news.NewsDTO;
import com.birdcompetition.util.DBHelper;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class PaymentDAO {

    private List<PaymentDTO> paymentList;

    public List<PaymentDTO> getPaymentList() {
        return paymentList;
    }

    public void getPaymentList(String idMember)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        boolean result = true;

        try {
            //1. Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Crate SQL String
                String sql = "Select * "
                        + "From OrderDetail "
                        + "Where IdMember = ?";

                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, idMember);

                //4. Execute query
                rs = stm.executeQuery();
                //5. Process
                while (rs.next()) {
                    //5.1 map
                    //5.1.1 get data from Result Set

                    int price = rs.getInt("Price");
                    String orderDate = rs.getString("OrderDate");
                    String NameOfProducts = rs.getString("OrderName");
                    

                  
                    PaymentDTO dto = new PaymentDTO(price, orderDate, NameOfProducts);
                    //5.2 add data to list
                    if (this.paymentList == null) {
                        this.paymentList = new ArrayList<>();
                    }//end account List has not existed
                    this.paymentList.add(dto);
                }//end map DB to DTO
            }//end connection í available
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }

    }

    public int getParticipants()
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        int result = 0;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Select count(IdOrder) as Parcipants "
                        + "From OrderDetail ";

                //3.Create Statement Object
                stm = con.prepareStatement(sql);

                //4.Exercute Query
                rs = stm.executeQuery();

                //5.Process
                if (rs.next()) {
                    result = rs.getInt("Parcipants");
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return result;

    }

    public List<PaymentDTO> getPaymentList_price()
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<PaymentDTO> result = null;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Select * \n"
                        + "From OrderDetail \n";
                      
                //3.Create Statement Object
                stm = con.prepareStatement(sql);

                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                while (rs.next()) {
                    int price = rs.getInt("Price");
                    String orderDate = rs.getString("OrderDate");
                    String NameOfProducts = rs.getString("OrderName");

                    PaymentDTO dto = new PaymentDTO(price, orderDate, NameOfProducts);

                    if (this.paymentList == null) {
                        this.paymentList = new ArrayList<>();
                    }
                    paymentList.add(dto);
                }
                return paymentList;
            }

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return result;
    }

    public boolean CreatePayment(String memberId, double price, String orderName) throws ClassNotFoundException, SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        Date currentDay = getCurrenDay();

        BirdContestDTO dto = new BirdContestDTO();
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "INSERT INTO OrderDetail (IdMember, Price, Status, OrderDate, OrderName) "
                        + "VALUES (?, ?, 'true', ?, ? ) ";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, memberId);
                stm.setDouble(2, price);
                stm.setDate(3, currentDay);
                stm.setString(4, orderName);

                //4. Execute Query
                int exercute = stm.executeUpdate();
                //5. Process
                if (exercute > 0) { 
                    return true;
                }
            }//end username and password is verified
        }//end connection is available   
        finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return result;
    }

    public Date getCurrenDay() {
        LocalDate localDate = LocalDate.now();
        java.sql.Date date = Date.valueOf(localDate);
        return date;
    }
}
