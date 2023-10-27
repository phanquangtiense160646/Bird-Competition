/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.payment;

import com.birdcompetition.contest.ContestDTO;
import com.birdcompetition.util.DBHelper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
        throws SQLException, ClassNotFoundException{
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        boolean result = true;
        

        try {
            //1. Make connection
            con = DBHelper.getConnection();
            if(con != null){
                //2. Crate SQL String
                String sql = "Select * "
                        + "From OrderDetail "
                        + "Full outer join Products "
                        + "On OrderDetail.IdProduct = Products.IdProduct "
                        + "Where IdMember = ?";
                        
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, idMember);
                
                //4. Execute query
                rs = stm.executeQuery();
                //5. Process
                while(rs.next()){
                   //5.1 map
                   //5.1.1 get data from Result Set
                   
                   int price = rs.getInt("Price");
                   String orderDate = rs.getString("OrderDate");
                   String NameOfProducts = rs.getString("NameOfProducts");

                   //5.1.2 add data to list
//                   ContestDTO dto = new ContestDTO(idContest, nameOfContest, date, 
//                           locationId, status, factor, minPoint, maxPoint, participatingFee, 
//                           idBird, idBird, maxPoint, idBird, factor, 
//                           beforePoint, afterPoint, result, location, nameOfBird, specie);
                   PaymentDTO dto = new PaymentDTO(price, orderDate, NameOfProducts);
                   //5.2 add data to list
                   if (this.paymentList == null){
                    this.paymentList = new ArrayList<>();   
                   }//end account List has not existed
                   this.paymentList.add(dto);
                }//end map DB to DTO
            }//end connection í available
        } finally {
            if(rs != null){
                rs.close();
            }
            if(stm != null){
                stm.close();
            }
            if(con != null){
                con.close();
            }
        }
        
    }
}
