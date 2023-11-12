/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.member;

import com.birdcompetition.bird.BirdDTO;
import com.birdcompetition.model.User;
import com.birdcompetition.user.UserDTO;
import com.birdcompetition.util.DBHelper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.naming.NamingException;

/**
 *
 * @author admin
 */
public class MemberDAO {

    List<MemberDTO> memberList;
    List<User> userList;

    public List<MemberDTO> getMemberList() {
        return memberList;
    }

    public void resetMemberList() {
        memberList = null;
    }

    public List<User> getUserList() {
        return userList;
    }

    public List<MemberDTO> getProducts() {
        List<MemberDTO> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBHelper.getConnection();
            String sql = "select * from Member";
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                MemberDTO p = new MemberDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(6),
                        rs.getString(7));
                list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    //list
    public MemberDTO getUserInfo(String idMember)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        MemberDTO result = null;
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

                    String memberId = rs.getString("IdMember");
                    String fullname = rs.getString("FullName");
                    String dateofbirth = rs.getString("DateOfBirth");
                    String country = rs.getString("Country");
                    String phone = rs.getString("Phone");
                    String gender = rs.getString("Gender");
                    String photopath = rs.getString("PhotoPath");

                    result = new MemberDTO(memberId, fullname, dateofbirth, country, phone, true, gender);
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

    public List<User> getAllMember() throws SQLException, ClassNotFoundException {

        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<User> result = null;

        try {
            con = new DBHelper().getConnection();
            if (con != null) {
                String sql = "Select * From [dbo].[Member]  a right  join \n"
                        + "[dbo].[User] b on a.IdMember = b.UserName \n"
                        + "where [UserName] not in ('staff','manager','admin')";
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String username = rs.getString("UserName");
                    String password = rs.getString("UserPassword");
                    String gmail = rs.getString("UserGmail");
                    int role = rs.getInt("UserRole");
                    String memberId = rs.getString("IdMember");
                    String fullname = rs.getString("FullName");
                    String dateofbirth = rs.getString("DateOfBirth");
                    String country = rs.getString("Country");
                    String phone = rs.getString("Phone");
                    String gender = rs.getString("Gender");
                    String viptype = rs.getString("TypeOfMemberShip");

                    User dto = new User(username, password, gmail, role, memberId, fullname, dateofbirth, country, phone, gender, viptype);
                    if (this.memberList == null) {
                        this.memberList = new ArrayList<>();
                    }
                    userList.add(dto);
                }
                return userList;
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

    public void getMemberById(String idMember)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1. Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Crate SQL String
                String sql = "Select * From [dbo].[Member] "
                        + "Where IdMember = ? and Member.Status = 'true'";

                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, idMember);

                //4. Execute query
                rs = stm.executeQuery();
                //5. Process
                while (rs.next()) {

                    String memberId = rs.getString("IdMember");
                    String fullname = rs.getString("FullName");
                    String dateofbirth = rs.getString("DateOfBirth");
                    String country = rs.getString("Country");
                    String phone = rs.getString("Phone");
                    String gender = rs.getString("Gender");
                    String photopath = rs.getString("PhotoPath");

//                    String trainer = rs.getString("m.FullName");                     
                    //5.1.2 add data to list
                    MemberDTO dto = new MemberDTO(memberId, fullname, dateofbirth, country, phone, true, gender);
//                    System.out.println(dto.toString());
                    if (this.memberList == null) {
                        this.memberList = new ArrayList<>();
                    }
                    this.memberList.add(dto);
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

    public boolean deleteMember(String idMember)
            throws SQLException, NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "Delete From [dbo].[Member] "
                        + "Where IdMember = ?";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);

                stm.setString(1, idMember);

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

    public List<MemberDTO> getMember() throws SQLException, ClassNotFoundException {

        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<MemberDTO> result = null;

        try {
            con = new DBHelper().getConnection();
            if (con != null) {
                String sql = "Select * From [dbo].[User]  "
                        + "Full outer join [dbo].[Member] "
                        + "ON [dbo].[User].UserName = Member.IdMember "
                        + "Where [dbo].[User].Status = 'true' ";
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
                while (rs.next()) {
                    String username = rs.getString("UserName");
                    String password = rs.getString("UserPassword");
                    String gmail = rs.getString("UserGmail");
                    int role = rs.getInt("UserRole");
                    String memberId = rs.getString("IdMember");
                    String fullname = rs.getString("FullName");
                    String dateofbirth = rs.getString("DateOfBirth");
                    String country = rs.getString("Country");
                    String phone = rs.getString("Phone");
                    
                    String gender = rs.getString("Gender");
                    

                    MemberDTO dto = new MemberDTO(memberId, fullname, dateofbirth, country, phone, gender, username, password);
                    if (this.memberList == null) {
                        this.memberList = new ArrayList<>();
                    }
                    memberList.add(dto);
                }
                return memberList;
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
//    public static void main(String[] args) throws ClassNotFoundException, SQLException {
//        MemberDAO dao = new MemberDAO();
//        List<MemberDTO> list = dao.getMember();
//        for (MemberDTO memberDTO : list) {
//            System.out.println("Size :   "+list.size());
//        }
       
    
    
    
     public boolean deleteUser(String username)
            throws SQLException, NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "Update [dbo].[User] "
                        + "Set [dbo].[User].Status = 'false' "
                        + "Where [dbo].[User].UserName = ? ";

                //3. Create Statement Object
                stm = con.prepareStatement(sql);

                stm.setString(1, username);

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

