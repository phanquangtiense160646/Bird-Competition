/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.bird;

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
public class BirdDAO {

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


    void sort(List list) {
        Collections.sort(list, (BirdDTO b1, BirdDTO b2) -> -b1.compareTo(b2));
    }
}
