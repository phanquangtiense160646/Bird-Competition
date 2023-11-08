/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.user;

import com.birdcompetition.model.User;
import com.birdcompetition.util.DBHelper;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;

/**
 *
 * @author admin
 */
public class UserDAO {
    public  List<UserDTO> getUsers() {
        List<UserDTO> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBHelper.getConnection();
            String sql = "select * from User";
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                UserDTO p = new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(5), rs.getBoolean(6));
               list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    
public List<UserDTO> getUser(int role){
    List<UserDTO> list = new ArrayList<>();
    Connection cn = null;   
    String query = "select * from [dbo].[User] where UserRole = ?";
    try{
        cn = DBHelper.getConnection();
        PreparedStatement stm = cn.prepareStatement(query);
        stm.setInt(1, role);
        ResultSet rs = stm.executeQuery();
        while (rs.next()) {
            UserDTO p = new UserDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(5), rs.getBoolean(6));
           list.add(p);
        }
        return list;
    } catch (Exception e) {
        e.printStackTrace(); // In ra thông báo lỗi để có thể xem và xử lý
    } finally {
        // Đóng kết nối ở đây (đảm bảo rằng kết nối được đóng dù có lỗi hay không)
        try {
            if (cn != null && !cn.isClosed()) {
                cn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    return null;
}

    
    
    private List<UserDTO> accountList;
    public List<UserDTO> getAccountList() {
        return accountList;
    }    
        public void searchName(String searchValue)
            throws SQLException, NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "select * from [dbo].[User]\n" +
                        "where UserName = ?";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, "%" + searchValue + "%");
                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                while (rs.next()) {
                    //5.1 map 
                    //5.1.1 get data from Result Set
                    String name = rs.getString("name");
                    String password = rs.getString("password");
                    String gmail = rs.getString("gmail");
                    int role = rs.getInt("role");
                    boolean status = rs.getBoolean("status");
                    //5.1.2 set properties of DTO
                    UserDTO dto = new UserDTO(name, password, gmail, role, status);

                    //5.2 add data to list
                    if (this.accountList == null) {
                        this.accountList = new ArrayList<>();
                    }//end accoutlist has not exist

                    this.accountList.add(dto);
                }//end map DB to DTO

            }//end connection is available
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
        
        
        
            public boolean deleteAccount(String name)
            throws SQLException, NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Delete From [dbo].[User] "
                        + "Where UserName = ?";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, name);

                //4.Exercute Query
                int exercute = stm.executeUpdate();
                //5.Process
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

            
        public boolean updateAccount(String name, String password, boolean role)
        throws SQLException, NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Update [dbo].[User] "
                        + "Set UserPassword = ?, UserRole = ? "
                        + "Where UserName = ?";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, password);
                stm.setBoolean(2, role);
                stm.setString(3, name);

                //4.Exercute Query
                int exercute = stm.executeUpdate();
                //5.Process
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

//            public UserDTO getUserInfo(String name)
//            throws SQLException, ClassNotFoundException {
//        Connection con = null;
//        PreparedStatement stm = null;
//        ResultSet rs = null;
//        UserDTO result = null;
//
//        try {
//            //1.Make connection
//            con = DBHelper.getConnection();
//            //check 
//            if (con != null) {
//                //2.Creat SQL String 
//            String query = "select * from [dbo].[User] "
//                    + "where UserName = ? ";
//                //3.Create Statement Object
//                stm = con.prepareStatement(query);
//                stm.setString(1, name);
//                //4.Exercute Query
//                rs = stm.executeQuery();
//                //5.Process
//                if (rs.next()) {
//
//
//                    String password = rs.getString("password");
//                    String gmail = rs.getString("gmail");                   
//                  
//                    result = new UserDTO(name, password, gmail, 4, true);
//                }
//            }
//        } finally {
//            if (rs != null) {
//                rs.close();
//            }
//            if (stm != null) {
//                stm.close();
//            }
//            if (con != null) {
//                con.close();
//            }
//        }
//        return result;
//    }

        
        //create acc for admin
    public boolean createAccount(User user) throws SQLException,
            NamingException,
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
            
            String query = "insert into [dbo].[User](userName, userPassword, userGmail, userRole, idMember, fullName,dateOfBirth,country,phone, gender,vipType )\n" +
                        "values(?,?,?,4,?,?,?,?,?,?,?)";
            
            
            stm = con.prepareStatement(query);
            
            stm.setString(1, user.getUserName());
            stm.setString(2, user.getUserPassword()); // Đây là một giá trị tùy bạn muốn đặt cho UserGmail.
            stm.setString(3, user.getUserGmail());
            stm.setString(6, user.getFullName());
            
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
        
    public User getUserInfo(String idMember)
        throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        User result = null;        
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
            String query = "select * from [dbo].[Member] "
                    + "where IdMember = ? "  
                    + "and Status = 'true'";
            
                stm = con.prepareStatement(query);
                stm.setString(1, idMember);     
                
                rs = stm.executeQuery();
                if (rs.next()) {
                    
                    String idmember = rs.getString("IdMember");
                    String fullname = rs.getString("FullName");
                    Date dateofbirth = rs.getDate("DateOfBirth");
                    String country = rs.getString("Country");
                    int phone = rs.getInt("Phone");
                    String gender = rs.getString("Gender");
                    String photopath = rs.getString("PhotoPath");
                    
                    result = new User(fullname, gender, query, phone, idmember, fullname, photopath, country, phone, gender, query);
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
  public boolean insertAccount (UserDTO udto)
            throws SQLException, NamingException, ClassNotFoundException{
        Connection con = null;
        PreparedStatement stm = null;
            try {
            con = DBHelper.getConnection();
            if (con != null){
            String query = "INSERT INTO [dbo].[User](UserName, UserPassword, UserGmail, UserRole, Status)\n" +
                        "values(?,?,?,0,'true')";
            
            
            stm = con.prepareStatement(query);
            
            stm.setString(1, udto.getName());
            stm.setString(2, udto.getPassword()); 
            stm.setString(3, udto.getGmail());
            stm.setInt(4, udto.getRole());
            
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
          
    
  public boolean accountUpdate(UserDTO dto)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;  
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 

                String sql= "UPDATE User"  
                        + "SET UserName = ?, UserPassword = ?, UserGmail = ?, UserRole = ? ";
                stm = con.prepareStatement(sql);     
                stm.setString(1, dto.getName());
                stm.setString(2, dto.getPassword());
                stm.setString(3, dto.getGmail());
                stm.setInt(4, dto.getRole());
                //4.Exercute Query
                int exercute = stm.executeUpdate();
                //5.Process
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

