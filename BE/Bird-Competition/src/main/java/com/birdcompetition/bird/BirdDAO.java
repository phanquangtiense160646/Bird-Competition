/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.bird;

import com.birdcompetition.birdInContest.BirdContestDTO;
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
                    String memberId = rs.getString("IdMember");
                    String trainer = rs.getString("FullName");

                    BirdDTO dto = new BirdDTO(name, speices, point, trainer, memberId, "photo", win, lose, tie, matchNumber, 0);
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
        if (searchValue != null) {
            for (int i = 0; i < birdList.size(); i++) {
                if (birdList.get(i).getBirdName().contains(searchValue)) {
                    searchList.add(birdList.get(i));
                }
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
                String sql = "Select * From Bird "
                        + "Full outer join BirdImage "
                        + "On Bird.IdBird = BirdImage.IdBird "
                        + "Where IdMember = ?";

                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, id);

                //4. Execute query
                rs = stm.executeQuery();
                //5. Process
                while (rs.next()) {
                    int birdId = rs.getInt("IdBird");
                    String name = rs.getString("NameOfBird");
                    String speices = rs.getString("Species");
                    int point = rs.getInt("Point");
                    String ownerId = rs.getString("IdMember");
                    int win = rs.getInt("Win");
                    int lose = rs.getInt("Lose");
                    int tie = rs.getInt("Tie");
                    int matchNumber = rs.getInt("MatchNumber");
                    boolean status = rs.getBoolean("Status");
                    String photoPath = rs.getString("imageFileName");
//                    String trainer = rs.getString("m.FullName");                     
                    //5.1.2 add data to list

                    BirdDTO dto = new BirdDTO(birdId, name, speices, point, status, ownerId, photoPath, win, lose, tie, matchNumber);
//                    System.out.println(dto.toString());
                    if (this.birdList == null) {
                        this.birdList = new ArrayList<>();
                    }
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
    public void getBirdByMemberId1(String id)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1. Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Crate SQL String
                String sql = "Select * From Bird "
                        + "Where IdMember = ?";

                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, id);

                //4. Execute query
                rs = stm.executeQuery();
                //5. Process
                while (rs.next()) {
                    int birdId = rs.getInt("IdBird");
                    String name = rs.getString("NameOfBird");
                    String speices = rs.getString("Species");
                    int point = rs.getInt("Point");
                    String ownerId = rs.getString("IdMember");
                    int win = rs.getInt("Win");
                    int lose = rs.getInt("Lose");
                    int tie = rs.getInt("Tie");
                    int matchNumber = rs.getInt("MatchNumber");
                    boolean status = rs.getBoolean("Status");
//                    String trainer = rs.getString("m.FullName");                     
                    //5.1.2 add data to list

                    BirdDTO dto = new BirdDTO(birdId, name, speices, point, status, ownerId, null, win, lose, tie, matchNumber);
//                    System.out.println(dto.toString());
                    if (this.birdList == null) {
                        this.birdList = new ArrayList<>();
                    }
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

    public BirdDTO getBirdById(int id)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        BirdDTO dto = new BirdDTO();
        System.out.println("get bird");

        try {
            //1. Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Crate SQL String
                String sql = "Select * From Bird Where IdBird = ? ";

                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setInt(1, id);

                //4. Execute query
                rs = stm.executeQuery();
                //5. Process
                if (rs.next()) {
                    int birdId = rs.getInt("IdBird");
                    String name = rs.getString("NameOfBird");
                    String speices = rs.getString("Species");
                    int point = rs.getInt("Point");
                    String ownerId = rs.getString("IdMember");
                    int win = rs.getInt("Win");
                    int lose = rs.getInt("Lose");
                    int tie = rs.getInt("Tie");
                    int matchNumber = rs.getInt("MatchNumber");
                    //5.1.2 add data to list

                    dto = new BirdDTO(birdId, name, speices, point, true, ownerId, ownerId, win, lose, tie, matchNumber);

                } else {
                    dto = null;
                }

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
        System.out.println("get bird ok");

        return dto;
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
                String sql = "INSERT INTO Bird (NameOfBird, Species, Point, Status, IdMember, Win, Lose, Tie, MatchNumber) VALUES (?, ?, 1000, 'true', ?, 0, 0, 0, 0)";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);

                stm.setString(1, bird.getBirdName());
                stm.setString(2, bird.getSpecies());
                stm.setString(3, bird.getMemberID());
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

    public boolean setBirdAfterMatch(int id, int point, int status)
            throws SQLException, NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        BirdDTO bird = getBirdById(id);
        int win = bird.getWin();
        int lose = bird.getLose();
        int tie = bird.getTie();
        if (status == 1) {
            win = bird.getWin() + 1;
        } else if (status == -1) {
            lose = bird.getLose() + 1;
        } else {
            tie = bird.getTie() + 1;
        }
        int totalMatch = win + lose + tie;
        BirdContestDTO dto = new BirdContestDTO();
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "UPDATE Bird "
                        + "SET Point = ?, "
                        + "Win = ?, "
                        + "Lose = ?, "
                        + "Tie = ?, "
                        + "MatchNumber = ? "
                        + "WHERE IdBird = ? ";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setInt(1, point);
                stm.setInt(2, win);
                stm.setInt(3, lose);
                stm.setInt(4, tie);
                stm.setInt(5, totalMatch);
                stm.setInt(6, id);

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
        System.out.println("ok");
        return result;
    }

    public boolean registerCompetition() {
        return false;
    }
    

    
    public BirdDTO getBirdInfo(String birdID)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        BirdDTO result = null;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
            String query = "select * from [dbo].[Bird] "
                    + "Full outer join BirdImage "
                    + "On [dbo].[Bird].IdBird = BirdImage.IdBird "
                    + "where Bird.IdBird = ? ";
                //3.Create Statement Object
                stm = con.prepareStatement(query);
                stm.setString(1, birdID);
                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                if (rs.next()) {

                    int birdId = rs.getInt("IdBird");
                    String name = rs.getString("NameOfBird");
                    String speices = rs.getString("Species");
                    int point = rs.getInt("Point");
                    String ownerId = rs.getString("IdMember");
                    int win = rs.getInt("Win");
                    int lose = rs.getInt("Lose");
                    int tie = rs.getInt("Tie");
                    int matchNumber = rs.getInt("MatchNumber");
                    String photoPath = rs.getString("imageFileName");
                    
                    result = new BirdDTO(birdId, name, speices, point, true, ownerId, photoPath, win, lose, tie, matchNumber);
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

    public boolean deleteBird(String id)
            throws SQLException, NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "Delete From Bird "
                        + "Where IdBird = ?";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, id);
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
