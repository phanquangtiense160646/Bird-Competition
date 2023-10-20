/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.member;

import com.birdcompetition.util.DBHelper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class MemberDAO {
    public  List<MemberDTO> getProducts() {
        List<MemberDTO> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBHelper.getConnection();
            String sql = "select * from Member";
            PreparedStatement stm = cn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                MemberDTO p = new MemberDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getBoolean(6), rs.getString(7));
               list.add(p);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
}
