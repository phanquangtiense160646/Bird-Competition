/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.rule;

import com.birdcompetition.util.DBHelper;
import java.sql.Connection;
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

    public void getAllRule() throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Select * "
                        + "From Rule ";

                //3.Create Statement Object
                stm = con.prepareStatement(sql);
                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                while (rs.next()) {
                    int id = rs.getInt("IdRule");
                    String name = rs.getString("NameOfRule");
                    String detail = rs.getString("DetailOfRule");
                    boolean status = rs.getBoolean("Status");
                    //5.1.2 set properties of DTO
                    RuleDTO dto = new RuleDTO(id, name, detail, status);
                    //5.2 add data to list
                    if (this.ruleList == null) {
                        this.ruleList = new ArrayList<>();
                    }
                    this.ruleList.add(dto);
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
