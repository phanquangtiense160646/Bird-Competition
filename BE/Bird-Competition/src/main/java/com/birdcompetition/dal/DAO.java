/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.birdcompetition.dal;

import com.birdcompetition.model.User;
import com.birdcompetition.user.UserDTO;
import com.birdcompetition.util.DBHelper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
                String query = "select * from [dbo].[User] a "
                        + "FULL OUTER JOIN Member b "
                        + "ON a.UserName = b.IdMember "
                        + "FULL OUTER JOIN MemberShip c "
                        + "ON b.IdMember = c.IdMember "
                        + "WHERE UserName = ? "
                        + "AND UserPassword = ? ";
                //3.Create Statement Object
                stm = con.prepareStatement(query);
                stm.setString(1, username);
                stm.setString(2, password);
                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                if (rs.next()) {

                    String gmail = rs.getString("UserGmail");
                    int role = rs.getInt("UserRole");
                    String idmember = rs.getString("IdMember");
                    String fullname = rs.getString("FullName");
                    String dateofbirth = rs.getString("DateOfBirth");
                    String country = rs.getString("Country");
                    String phone = rs.getString("Phone");
                    String gender = rs.getString("Gender");
                    String vipType = rs.getString("TypeOfMemberShip");

                    result = new User(username, password,
                            gmail, role, idmember, fullname, dateofbirth, country, phone, gender, vipType);

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


    public boolean UpdateProfile(String username, String fullname,
            String password, String email, String phone, String idmember)
            throws SQLException, ClassNotFoundException {
        Connection cons = null;
        PreparedStatement stm = null;
        boolean result = false;
        try {
            //1.Make connection
            cons = DBHelper.getConnection();
            if (cons != null) {
                //2. Create SQL String 
                String sql = "UPDATE [dbo].[User] "
                        + "SET UserPassword = ?, UserGmail = ? "
                        + "WHERE UserName = ? "
                        + "Update Member "
                        + "SET FullName = ?, Phone = ? "
                        + "WHERE IdMember = ? ";
                //3. Create Statement Object
                stm = cons.prepareStatement(sql);
                stm.setString(1, password);
                stm.setString(2, email);
                stm.setString(3, username);
                stm.setString(4, fullname);
                stm.setString(5, phone);
                stm.setString(6, idmember);

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
            if (cons != null) {
                cons.close();
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
                String query = "select * from [dbo].[User] "
                        + "where UserName = ? ";
                //3.Create Statement Object
                stm = con.prepareStatement(query);
                stm.setString(1, username);

                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                if (rs.next()) {

                    result = new User(username, username, username, 0, query, username, query, query, query, query, null);
                    
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
    
//    public void registerUser(String name, String password, String gmail) {
//
//
//        try {
//            con = DBHelper.getConnection();
//            String query = "insert into [dbo].[User]\n" +
//                        "values(?,?,?,0,0)";
//            stm = con.prepareStatement(query);
//            
//            stm.setString(1, name);
//            stm.setString(2, password); // Đây là một giá trị tùy bạn muốn đặt cho UserGmail.
//            stm.setString(3, gmail);
//           
//            
//            stm.executeUpdate();
//
//            
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                if (stm != null) {
//                    stm.close();
//                }
//                if (con != null) {
//                    con.close();
//                }
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }
//
//    }


    public boolean createAccount(UserDTO user)throws SQLException, 
            NamingException,
            ClassNotFoundException{
Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        ResultSet rs = null;      
        try {
            con = DBHelper.getConnection();
            String query = "insert into [dbo].[User]\n"
                    + "values(?,?,?,0,0)";
            stm = con.prepareStatement(query);

            stm.setString(1, user.getName());
            stm.setString(2, user.getPassword()); // Đây là một giá trị tùy bạn muốn đặt cho UserGmail.
            stm.setString(3, user.getGmail());
            stm.setInt(4, user.getRole());

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
            return false
                    ;
    }

    public boolean createAccount(User user) throws SQLException,
            ClassNotFoundException {

        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false; 

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                String query = "Insert into [dbo].[User](UserName, UserPassword, UserRole, Status) "
                        + "Values(?,?,4,1) "
                        + "Insert into [dbo].[Member](IdMember, FullName, Phone, Status) "
                        + "Values(?,'name',0,1)";

                stm = con.prepareStatement(query);

                stm.setString(1, user.getUserName());
                stm.setString(2, user.getUserPassword());
                stm.setString(3, user.getUserName());

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
    public User GetUserInfo(String username)
            throws SQLException, ClassNotFoundException {

        ResultSet rs = null;
        User result = null;
        Connection con = null;
        PreparedStatement stm = null;
        
             
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String query = "select * from [dbo].[User] "
                        + "FULL OUTER JOIN Member "
                        + "ON [dbo].[User].UserName = Member.IdMember "
                        + "where UserName = ? ";
                //3.Create Statement Object
                stm = con.prepareStatement(query);
                stm.setString(1, username);
                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                if (rs.next()) {
                    String password = rs.getString("UserPassword").trim();
                    String gmail = rs.getString("UserGmail").trim();
                    int role = rs.getInt("UserRole");
                    String idmember = rs.getString("IdMember").trim();
                    String fullname = rs.getString("FullName").trim();
                    String phone = rs.getString("Phone").trim();
                    String gender = rs.getString("Gender");

                    result = new User(username, password, gmail, role, idmember, fullname, null, "VietNam", phone, gender, null);
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
    
    public boolean insertAccount (UserDTO udto)
            throws SQLException, NamingException, ClassNotFoundException{
Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        ResultSet rs = null;      
            try {
            con = DBHelper.getConnection();
            if (con != null){
            String query = "INSERT INTO [dbo].[User](UserName, UserPassword, UserGmail, UserRole, Status)\n" +
                        "values(?,?,?,0,true)";
            
            
            stm = con.prepareStatement(query);
            
            stm.setString(1, udto.getName());
            stm.setString(2, udto.getPassword()); 
            stm.setString(3, udto.getGmail());
            //stm.setInt(4, role);
            
                int exercute = stm.executeUpdate();
                if (exercute > 0) {
                    return true;
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
        return false;
    }
    
     public boolean createAdminAccount(User user) throws SQLException,
            ClassNotFoundException {

        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false; 

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null){
            //String query = "insert into [dbo].[User]\n" +
            //            "values(?,?,?,0,0)";
            
            String query = "insert into [dbo].[User](UserName, UserPassword, UserRole, [dbo].[User].Status) values(?, ? , ?, 'true')";
            
            
            stm = con.prepareStatement(query);
            
            stm.setString(1, user.getUserName());
            stm.setString(2, user.getUserPassword());
            stm.setInt(3, user.getUserRole());

            
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

            
