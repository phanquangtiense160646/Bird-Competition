/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.birdcompetition.dal;

import com.birdcompetition.model.User;
import com.birdcompetition.util.DBHelper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.NamingException;

/**
 *
 * @author 84366
 */
public class DAO extends DBHelper{

    public User checkLogin(String username, String password)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
//        boolean result = false;
        User result = null;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
            String query = "select * from [dbo].[User] " + 
                    "where UserName = ? " +
                    " and UserPassword = ?";
                //3.Create Statement Object
                stm = con.prepareStatement(query);
                stm.setString(1, username);
                stm.setString(2, password);
                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                if (rs.next()) {
                    String id = rs.getString("IdUser");
                    String gmail = rs.getString("UserGmail");
                    int role = rs.getInt("UserRole");
                    
                    result = new User(id, username, password, gmail, role);
                }//end username and password is verified 
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
   
    public User checkUserExist(String username)
            throws SQLException, NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
//        boolean result = false;
        User result = null;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
            String query = "select * from [dbo].[User] " +
                    "where UserName = ? " ;
                //3.Create Statement Object
                stm = con.prepareStatement(query);
                stm.setString(1, username);
                
                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                if (rs.next()) {
                    
                    result = new User(username, username, username, username, 0);
                }//end username and password is verified 
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
    
//    public void signup(String user, String pass) {
//    Connection con = null;
//    PreparedStatement stm = null;
//
//    String query = "insert into [dbo].[User]\n" +
//                        "values(0,?,?,0,0,0)";
//
//    try {
//        con = DBHelper.makeConnections();
//        stm = con.prepareStatement(query);
//        stm.setString(1, user);
//        stm.setString(2, pass);
//        stm.executeUpdate();
//    } catch (Exception e) {
//        e.printStackTrace(); // In ra lỗi
//    } finally {
//        try {
//            if (stm != null) {
//                stm.close();
//            }
//            if (con != null) {
//                con.close();
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//}
    
    public void registerUser(User user) {
        Connection con = null;
        PreparedStatement stm = null;

        try {
            con = DBHelper.getConnection();
            String query = "insert into [dbo].[User]\n" +
                        "values(?,?,?,?,0,0)";
            stm = con.prepareStatement(query);
            stm.setString(1, user.getIdUser());
            stm.setString(2, user.getUserName());
            stm.setString(3, user.getUserPassword()); // Đây là một giá trị tùy bạn muốn đặt cho UserGmail.
            stm.setString(4, user.getUserGmail());
            stm.setInt(5, user.getUserRole());
            
            stm.executeUpdate();

            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    public boolean createAccount(User user)throws SQLException, 
            NamingException,
            ClassNotFoundException{
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null){
            String query = "insert into [dbo].[User]\n" +
                        "values(?,?,?,?,0,0)";
            stm = con.prepareStatement(query);
            stm.setString(1, user.getIdUser());
            stm.setString(2, user.getUserName());
            stm.setString(3, user.getUserPassword()); // Đây là một giá trị tùy bạn muốn đặt cho UserGmail.
            stm.setString(4, user.getUserGmail());
            stm.setInt(5, user.getUserRole());
                int exercute = stm.executeUpdate();
                if (exercute > 0) {
                    result = true;
                }
                //end username and password is verified 
            }

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
}    

            