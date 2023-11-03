/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.birdInContest;

import com.birdcompetition.bird.BirdDTO;
import com.birdcompetition.schedule.ScheduleDTO;
import com.birdcompetition.util.DBHelper;
import java.sql.Connection;
import java.sql.Date;
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
 * @author Danh
 */
public class BirdContestDAO {

    private List<BirdContestDTO> joinerList;

    public List<BirdContestDTO> getList() {
        return joinerList;
    }

    public void getJoiner(int matchId)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Select BirdContest.*, Bird.Point , Bird.NameOfBird, Member.FullName, Member.IdMember "
                        + "From BirdContest, Bird, Member "
                        + "Where BirdContest.IdContest = ? "
                        + "and BirdContest.IdBird = Bird.IdBird "
                        + "and Bird.IdMember = Member.IdMember "
                        + "and BirdContest.CheckIn = 'true' "
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setInt(1, matchId);

                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                while (rs.next()) {
                    String birdId = rs.getString("IdBird");
                    String matchID = rs.getString("IdContest");
                    int order = rs.getInt("Rank");
//                    int prePoint = rs.getInt("BeforePoint");
                    int point = rs.getInt("Point");
                    int postPoint = rs.getInt("AfterPoint");
                    Boolean checkIn = rs.getBoolean("CheckIn");
                    String checkInCode = rs.getString("CheckInCode");
                    String birdName = rs.getString("NameOfBird");
                    String trainerName = rs.getString("FullName");
                    String memberId = rs.getString("IdMember");

                    BirdContestDTO dto = new BirdContestDTO(birdId, matchID, order, point, postPoint, true, checkInCode, birdName, trainerName, memberId);
//                    System.out.println(dto.toString());

                    if (this.joinerList == null) {
                        this.joinerList = new ArrayList<>();
                    }
                    joinerList.add(dto);
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

    public boolean setAfterMatch(int id, int order, int prePoint, int postPoint, int matchId)
            throws SQLException, NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;

        BirdContestDTO dto = new BirdContestDTO();
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "UPDATE BirdContest "
                        + "SET Rank = ?, "
                        + "BeforePoint = ?, "
                        + "AfterPoint = ? "
                        + "WHERE IdBird = ? and IdContest = ?";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setInt(1, order);
                stm.setInt(2, prePoint);
                stm.setInt(3, postPoint);
                stm.setInt(4, id);
                stm.setInt(5, matchId);
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
    
    public boolean setCheckIn(int id)
            throws SQLException, NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;

        BirdContestDTO dto = new BirdContestDTO();
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "UPDATE BirdContest "
                        + "SET CheckIn = 'true' "
                        + "WHERE IdBird = ? ";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setInt(1, id);
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

    public boolean checkValidOrder(String[] orderList) {
        boolean result = true;
        int total = 0;
        int validRs = 0;
        for (int i = 0; i < orderList.length; i++) {
            if (!checkNull(orderList)) {
                return false;
            }

            int order = Integer.parseInt(orderList[i]);
            total = total + order;
            validRs = validRs + (i + 1);

            if (order > orderList.length || order < 1) {
                System.out.println("Wrong order number");
                result = false;
            }
            if (!checkDup(orderList, orderList[i])) {
                System.out.println("Order duplicated");
                result = false;
            }
        }

        if (total != validRs) {
            System.out.println("Order not full in range");
            result = false;
        }
        return result;
    }

    private boolean checkNull(String[] orderList) {
        for (int i = 0; i < orderList.length; i++) {
            if (orderList[i].isEmpty()) {
                return false;
            }
        }
        return true;
    }

    private boolean checkDup(String[] orderList, String order) {
        int present = 0;
        for (int i = 0; i < orderList.length; i++) {
            if (orderList[i].equals(order)) {
                present += 1;
                if (present > 1) {
                    return false;
                }
            }
        }
        return true;
    }

    public BirdContestDTO getCheckIn(String code, int matchId)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        ScheduleDTO match = new ScheduleDTO();
        BirdContestDTO dto = new BirdContestDTO();
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Select BirdContest.*, Bird.Point , Bird.NameOfBird, Member.FullName, Member.IdMember "
                        + "From BirdContest, Bird, Member "
                        + "Where BirdContest.IdBird = Bird.IdBird "
                        + "and Bird.IdMember = Member.IdMember "
                        + "and IdContest = ? and CheckInCode = ?";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
//                stm.setInt(1, contestStatus);
                stm.setInt(1, matchId);
                stm.setString(2, code);

                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                if(rs.next()) {
                    String birdId = rs.getString("IdBird");
                    String matchID = rs.getString("IdContest");
                    int order = rs.getInt("Rank");
//                    int prePoint = rs.getInt("BeforePoint");
                    int point = rs.getInt("Point");
                    int postPoint = rs.getInt("AfterPoint");
                    Boolean checkIn = rs.getBoolean("CheckIn");
                    String checkInCode = rs.getString("CheckInCode");
                    String birdName = rs.getString("NameOfBird");
                    String trainerName = rs.getString("FullName");
                    String memberId = rs.getString("IdMember");

                    dto = new BirdContestDTO(birdId, matchID, order, point, postPoint, checkIn, checkInCode, birdName, trainerName, memberId);
                    System.out.println("dto: " + dto.toString());
//                    return dto;
                }else{
                    dto = null;
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
        return dto;
    }
void sort(List<BirdContestDTO> list) {
        Collections.sort(list, (BirdContestDTO b1, BirdContestDTO b2) -> b1.compareTo(b2));
    }

}
