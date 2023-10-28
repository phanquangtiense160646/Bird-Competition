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
                String sql = "Select BirdContest.*, Bird.Point , Bird.NameOfBird, Member.FullName "
                        + "From BirdContest, Bird, Member "
                        + "Where BirdContest.IdContest = ? "
                        + "and BirdContest.IdBird = Bird.IdBird "
                        + "and Bird.IdMember = Member.IdMember "
                        + "and BirdContest.CheckIn = 'true' ";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setInt(1, matchId);

                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                System.out.println("joiner");
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

                    BirdContestDTO dto = new BirdContestDTO(birdId, matchID, order, point, postPoint, true, checkInCode, birdName, trainerName);
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

    public boolean setPoint(int id, int order, int prePoint, int postPoint)
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
                        + "WHERE IdBird = ? ";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setInt(1, order);
                stm.setInt(2, prePoint);
                stm.setInt(3, postPoint);
                stm.setInt(4, id);
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
                String sql = "Select BirdContest.*, Bird.Point , Bird.NameOfBird, Member.FullName "
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

                    dto = new BirdContestDTO(birdId, matchID, order, point, postPoint, checkIn, checkInCode, birdName, trainerName);
                    System.out.println("dto: " + dto.toString());
                    return dto;
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
        return null;
    }

    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    void sort(List<BirdContestDTO> list) {
        Collections.sort(list, (BirdContestDTO b1, BirdContestDTO b2) -> b1.compareTo(b2));
    }

    public void Scoring(int matchId, List<BirdContestDTO> list) {
        int matchSize = list.size();
        double mid = ((double) matchSize + 1) / 2.0;
        int totalPoint = getTotalPoint();
        double avgPoint = (double) totalPoint / matchSize;

        for (BirdContestDTO bird : list) {
            int oder = bird.getOrder();
            if (oder < mid) { // vào Top
                int point = InTopScoring(bird, mid, avgPoint, matchSize, list);
                bird.setPostPoint(bird.getPrePoint() + point);
            } else if (bird.getOrder() > mid) { // Out top
                int point = OutTopScoring(bird, mid, avgPoint, matchSize);
                bird.setPostPoint(bird.getPrePoint() + point);

            } else if (bird.getOrder() == mid) { // giữa
                bird.setPostPoint(bird.getPrePoint());
            }

        }
        sort(list);

    }

    private int getTotalPoint() {
        int sum = 0;
        for (BirdContestDTO bird : joinerList) {
            sum = sum + bird.getPrePoint();
        }
        return sum;
    }
//Win

    private double getMinElo(List<BirdContestDTO> list, double mid, double avgPoint) {
        double min = Double.MAX_VALUE;

        for (BirdContestDTO bird : list) {
            if (bird.getOrder() < mid) {
                if (bird.getPrePoint() < min) {
                    min = bird.getPrePoint();
                }
            }
        }
        return min;
    }

    private double getReverseRate(List<BirdContestDTO> list, double mid, double avgPoint) {
        double min = getMinElo(list, mid, avgPoint);

        double total1 = 0;
        double total2 = 0;
        double total3 = 0;
        for (BirdContestDTO bird : list) {
            if (bird.getOrder() < mid) {
                double rate1 = bird.getPrePoint() / avgPoint;
                double rate2 = rate1 / min;
                total1 = total1 + rate1;

                if (bird.getPrePoint() == min) {
                    double rate3 = 1;
                    total3 = total3 + rate3;
                } else if (bird.getPrePoint() != min) {
                    double rate3 = 1 / rate2;
                    total3 = total3 + rate3;
                }
            }
        }
        double rate = total3 / total1;
        return rate;
    }

    private double getRate4(BirdContestDTO bird, double revRate, double avgPoint, double min) {
        double rate1 = bird.getPrePoint() / avgPoint;
        double rate2 = rate1 / min;
        double rate3 = 0;
        if (bird.getPrePoint() == min) {
            rate3 = 1;
        } else {
            rate3 = 1 / rate2;
        }
        rate3 = rate3 * revRate;
        System.out.println("rate4 " + rate3);
        return rate3;
    }

    private double getWinPointRate(double mid, double avgPoint, int size, List<BirdContestDTO> list, double reverseRate) {
        double min = getMinElo(list, mid, avgPoint);
        double total = 0;
        for (BirdContestDTO bird : joinerList) {
            if (bird.getOrder() < mid) {
                double rate4 = getRate4(bird, reverseRate, avgPoint, min);
                total = total + rate4;
            }
        }
        double rate = (size * 5) / total;
        System.out.println("rateX " + rate);
        return rate;
    }

    private int InTopScoring(BirdContestDTO bird, double mid, double avgPoint, int size, List<BirdContestDTO> list) {
        int oder = bird.getOrder();
        int base = (int) mid + 1;

        double reverseRate = getReverseRate(list, mid, avgPoint);
        double rate = getWinPointRate(mid, avgPoint, size, list, reverseRate);

        int point = 5 * (base - oder);
        if (oder == 1) {
            point = point + 5;
        }
        double rate4 = getRate4(bird, reverseRate, avgPoint, mid);
        double eloPoint = rate * rate4;
        System.out.println("elo point " + eloPoint);

//        point = point + (int) Math.round(eloPoint);

        return point;
    }
//Lose

    private double getLosePointRate(double avgTop, double avgPoint, int size) {
        double total = 0;
        for (BirdContestDTO bird : joinerList) {
            if (bird.getOrder() > avgTop) {
                total = total + (bird.getPrePoint() / avgPoint);
            }
        }
        double rate = (size * 5) / total;
        return rate;
    }

    private int OutTopScoring(BirdContestDTO bird, double avg, double avgPoint, int size) {
        int oder = bird.getOrder();
        int base = (int) avg;
        double pointRate = bird.getPrePoint() / avgPoint;
        double rate = getLosePointRate(avg, avgPoint, size);

        int point = 5 * (base - oder);
        if (oder == size) {
            point = point - 5;
        }

        double eloPoint = -(bird.getPrePoint() / avgPoint) * rate;
//        point = point + (int) Math.round(eloPoint);
        return point;
    }
}
