/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.membership;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

import com.birdcompetition.util.DBHelper;

public class MembershipDAO {
    public List<MembershipDTO> searchByType(String search) throws SQLException{
        List<MembershipDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = "SELECT [IdMember], [DateSignUp], [status], [TypeOfMemberShip], [Decription]"
                + "FROM [MemberShip]"
                + "WHERE [TypeOfMemberShip] LIKE ?";
        try{
            conn = DBHelper.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1,"%" + search + "%");
            rs = stm.executeQuery();
            while(rs.next()){
                String memberId = rs.getString("IdMember");
                Date dateOfSignup = rs.getDate("DateSignUp");
                boolean status = rs.getBoolean("status");
                String type = rs.getString("TypeOfMemberShip");
                String des = rs.getString("Decription");
                MembershipDTO member = new MembershipDTO(memberId, dateOfSignup, status, 0, des);
                list.add(member);
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(rs != null){
                rs.close();
            }
            if(stm != null){
                stm.close();
            }
            if(conn != null){
                conn.close();
            }
        }
        return list;
    }
    
    public boolean deleteMemberShip(String id) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = "DELETE FROM [MemberShip] WHERE [IdMember] LIKE ?";
        try{
            conn = DBHelper.getConnection();
            if(conn != null){
                stm = conn.prepareStatement(sql);
                stm.setString(1, id);
                check = stm.executeUpdate() > 0 ? true : false;
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(rs != null){
                rs.close();
            }
            if(stm != null){
                stm.close();
            }
            if(conn != null){
                conn.close();
            }
        }
        
        return check;
    }
    
    public boolean registerMembership(String id, Date dateSignup, boolean status, String typeOfMemberShip, String description) 
            throws SQLException{
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        String sql = "INSERT INTO [dbo].[MemberShip] ([IdMember], [DateSignUp], [status], [TypeOfMemberShip], [Decription]) "
                + "VALUES(?, ?, ?, ?, ?)";
        try{
            conn = DBHelper.getConnection();
            stm = conn.prepareStatement(sql);
            stm.setString(1, id);
            stm.setDate(2, dateSignup);
            stm.setBoolean(3, status);
            stm.setString(4, typeOfMemberShip);
            stm.setString(5, description);
            check = stm.executeUpdate() > 0 ? true : false;
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(stm != null){
                stm.close();
            }
            if(conn != null){
                conn.close();
            }
        }
        
        return check;
    }
    
    public boolean updateMembership(Date dateSignup, String typeOfMembership) throws SQLException{
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        String sql = "UPDATE [dbo].[MemberShip] SET [DateSignUp] = ?, [TypeOfMemberShip] = ?"
                + "WHERE [IdMember] = ?";
        try{
            conn = DBHelper.getConnection();
            if(conn != null){
                stm = conn.prepareStatement(sql);
                stm.setDate(1, dateSignup);
                stm.setString(2, typeOfMembership);
                check = stm.executeUpdate() > 0 ? true : false;
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(stm != null){
                stm.close();
            }
            if(conn != null){
                conn.close();
            }
        }
        return check;
    }
}
