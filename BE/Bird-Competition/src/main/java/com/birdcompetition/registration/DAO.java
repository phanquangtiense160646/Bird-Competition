/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.registration;

import com.birdcompetition.util.DBHelper;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class DAO implements Serializable {

    public boolean checkConnect()
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        boolean result = false;

        try {
            con = DBHelper.getConnection();
            if (con != null) {
                return true;
            }
        } finally {
            if (con != null) {
                con.close();
            }
        }
        return result;
    }
}
