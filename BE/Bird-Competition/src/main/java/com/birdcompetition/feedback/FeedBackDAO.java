/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.feedback;

import com.birdcompetition.news.NewsDTO;
import com.birdcompetition.util.DBHelper;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MSI
 */
public class FeedBackDAO implements Serializable {

    private List<FeedBackDTO> feedbackList;

    public List<FeedBackDTO> getList() {
        return feedbackList;
    }

    public void getFeedBackList()
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
//        boolean result = false;
        try {
            con = DBHelper.getConnection();
            if (con != null) {
                //2.Creat SQL String 
                String sql = "select * from FeedBack ";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                while (rs.next()) {
                    String idMember = rs.getString("IdMember");
                    String descrip = rs.getString("Description");

                    FeedBackDTO dto = new FeedBackDTO(idMember, descrip);

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
    public List<FeedBackDTO> getFeedback()
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<FeedBackDTO> result = null;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
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

                    FeedBackDTO dto = new FeedBackDTO(idMember, descrip);

                    if (this.feedbackList == null) {
                        this.feedbackList = new ArrayList<>();
                    }
                    feedbackList.add(dto);
                }
                return feedbackList;
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
                String sql = "Select count(IdMember) as Parcipants "
                        + "From FeedBack ";
                        
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

    public boolean insertFeedback(String IdMember, String Description ) throws ClassNotFoundException, SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        try { //1. Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "Insert into FeedBack(IdMember, Description)\n"
                        + "Values(?,?)";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);

                stm.setString(1, IdMember);
                stm.setString(2, Description);

                //4. Execute Query
                int effectRows = stm.executeUpdate();
                //5. Process
                if (effectRows > 0) {
                    result = true;
                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(FeedBackDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }

        }
        return result;
    }
    public boolean deleteFeedback(String id)
            throws SQLException,  ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "Delete FeedBack\n"
                        + "Where IdMember = ? ";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);

                stm.setString(1, id);

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
}
