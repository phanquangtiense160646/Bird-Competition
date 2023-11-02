/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.rule;

import com.birdcompetition.news.NewsDTO;
import com.birdcompetition.util.DBHelper;
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
public class RuleDAO {

    List<RuleDTO> ruleList;

    public List<RuleDTO> getRuleList() {
        return ruleList;
    }

    public List<RuleDTO> getAllRule()
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<RuleDTO> result = null;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Select * "
                        + "From Rule\n";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);

                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                while (rs.next()) {
                    int id = rs.getInt("IdRule");
                    String newsName = rs.getString("NameOfRule");
                    String descrip = rs.getString("DetailOfRule");
                    boolean status = rs.getBoolean("Status");

                    RuleDTO dto = new RuleDTO(id, newsName, descrip, status);
                    if (this.ruleList == null) {
                        this.ruleList = new ArrayList<>();
                    }
                   ruleList.add(dto);
                }
                return ruleList;
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
}
