/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.bird;

import com.birdcompetition.util.DBHelper;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.NamingException;

/**
 *
 * @author admin
 */
public class BirdDAO implements Serializable {

    List<BirdDTO> birdList;

    public List<BirdDTO> getBirdList() {
        return birdList;
    }

    public void resetBirdList() {
        birdList = null;
    }

    public void displayLeaderboard()
            throws SQLException, NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            con = DBHelper.getConnection();
            if (con != null) {
                String sql = "Select NameOfBird, Species, Point, Win, Lose, Tie, MatchNumber, b.IdMember, m.FullName "
                        + "From Bird b JOIN [dbo].[Member] m "
                        + "ON m.IdMember = b.IdMember ";
                stm = con.prepareStatement(sql);

                rs = stm.executeQuery();
                while (rs.next()) {
                    String name = rs.getString("NameOfBird");
                    String speices = rs.getString("Species");
                    int point = rs.getInt("Point");
                    int win = rs.getInt("Win");
                    int lose = rs.getInt("Lose");
                    int tie = rs.getInt("Tie");
                    int matchNumber = rs.getInt("MatchNumber");
                    String trainer = rs.getString("FullName");

                    BirdDTO dto = new BirdDTO(name, speices, point, trainer, "photo", win, lose, tie, matchNumber, 0);
                    if (this.birdList == null) {
                        this.birdList = new ArrayList<>();
                    }
                    this.birdList.add(dto);
                }
                sort(birdList);
                setRank();
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

    public void setRank() {
        for (int i = 0; i < birdList.size(); i++) {
            birdList.get(i).setRank(i + 1);
        }
    }

    public List<BirdDTO> search(String searchValue) {
        List<BirdDTO> searchList = new ArrayList<>();
        for (int i = 0; i < birdList.size(); i++) {
            if (birdList.get(i).getBirdName().contains(searchValue)) {
                searchList.add(birdList.get(i));
            }
        }
        return searchList;
    }


    public void getBirdByMemberId(String id)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        

        try {
            //1. Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Crate SQL String
                String sql = "Select * From Bird Where IdMember = ?";

                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, id);

                //4. Execute query
                rs = stm.executeQuery();
                //5. Process
                this.birdList = new ArrayList<>();
                while (rs.next()) {
                    String birdId = rs.getString("IdBird");
                    String name = rs.getString("NameOfBird");
                    String speices = rs.getString("Species");
                    int point = rs.getInt("Point");
//                    String ownerId = rs.getString("b.IdMember");
//                    int win = rs.getInt("Win");
//                    int lose = rs.getInt("Lose");
//                    int tie = rs.getInt("Tie");
//                    int matchNumber = rs.getInt("MatchNumber");
//                    String trainer = rs.getString("m.FullName");                     
                    //5.1.2 add data to list

                    BirdDTO dto = new BirdDTO(birdId, name, speices, point, true, id);
//                    System.out.println(dto.toString());
                    this.birdList.add(dto);
                }//end map DB to DTO
                sort(birdList);
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

    void sort(List list) {
        Collections.sort(list, (BirdDTO b1, BirdDTO b2) -> -b1.compareTo(b2));
    }

    public boolean addBird(BirdDTO bird) throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        try {
            //1. Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "INSERT INTO Bird (IdBird, NameOfBird, Species, Point, Status, IdMember, Win, Lose, Tie, MatchNumber) VALUES (?, ?, ?, 1000, 'true', ?, 0, 0, 0, 0)";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, bird.getBirdID());
                stm.setString(2, bird.getBirdName());
                stm.setString(3, bird.getSpecies());
                stm.setString(4, bird.getMemberID());
                //4. Execute Query
                int effectRows = stm.executeUpdate();
                //5. Process
                if (effectRows > 0) {
                    result = true;
                }
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BirdDAO.class.getName()).log(Level.SEVERE, null, ex);
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
