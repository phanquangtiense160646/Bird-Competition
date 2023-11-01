/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.feedback;

import com.birdcompetition.util.DBHelper;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author MSI
 */
public class FeedBackDAO implements Serializable {

    private List<FeedBackDTO> feedbackList;

    public List<FeedBackDTO> getList() {
        return feedbackList;
    }

    public void getFeedBack()
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
//        boolean result = false;
        try {
            con = DBHelper.getConnection();
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Select * "
                        + "From FeedBack\n";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                while (rs.next()) {
                    String idMember = rs.getString("IdMember");
                    String descrip = rs.getString("Description");
                    Date date = rs.getDate("date");
                    boolean status = rs.getBoolean("Status");

                    FeedBackDTO dto = new FeedBackDTO(idMember, descrip, date, status);

                    if (this.feedbackList == null) {
                        this.feedbackList = new ArrayList<>();
                    }
                    feedbackList.add(dto);
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
    }
   

}
