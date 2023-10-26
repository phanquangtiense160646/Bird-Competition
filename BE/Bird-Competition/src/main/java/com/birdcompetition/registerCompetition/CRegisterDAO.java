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
}
