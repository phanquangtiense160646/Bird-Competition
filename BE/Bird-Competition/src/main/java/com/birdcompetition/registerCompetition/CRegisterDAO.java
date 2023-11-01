package com.birdcompetition.registerCompetition;

import com.birdcompetition.bird.BirdContestDTO;

import com.birdcompetition.util.DBHelper;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class CRegisterDAO implements Serializable {
    public boolean cRegisterInsert(BirdContestDTO birdContest) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Insert Into BirdContest("
                        + "IdBird, IdContest, BeforePoint, Status, CheckIn, CheckInCode"
                        + ") Values("
                        + "?, ?, ?, ?, ?, ?"
                        + ")";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setInt(1, birdContest.getBirdId());
                stm.setString(2, birdContest.getContestId());
                stm.setInt(3, birdContest.getBeforePoint());
                stm.setBoolean(4, birdContest.isStatus());
                stm.setBoolean(5, birdContest.isCheckIn());
                stm.setString(6, birdContest.getCheckinCode());

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
    
    private List<BirdContestDTO> listBirdContest;

    public List<BirdContestDTO> getListBirdContest() {
        return listBirdContest;
    }
    
    
    public void getBirdInContest(int contestId)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
//        boolean result = false;
        
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Select * "
                        + "From BirdContest "
                        + "Where IdContest = ? ";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setInt(1, contestId);
                //4.Exercute Query
                rs = stm.executeQuery();
                
                //5.Process
                this.listBirdContest = new ArrayList<>();
                while (rs.next()) {
                    int birdId = rs.getInt("IdBird");
                    int rank = rs.getInt("Rank");
                    int beforePoint = rs.getInt("BeforePoint");
                    int afterPoint = rs.getInt("AfterPoint");
                    String contestID = contestId + "";
                    BirdContestDTO dto = new BirdContestDTO(birdId, contestID, rank, beforePoint, 
                            afterPoint, true, true, null);
                    this.listBirdContest.add(dto);
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
        
    }
}
