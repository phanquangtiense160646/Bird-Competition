package com.birdcompetition.membership;

import com.birdcompetition.birdInContest.BirdContestDTO;
import com.birdcompetition.util.DBHelper;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MembershipDAO {

    public boolean VipUpdate(String memberId, String type) throws SQLException, ClassNotFoundException {

        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        Date registedDate = getCurrenDay();
        Date expiredDate = addMonth(registedDate, 12);

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "UPDATE MemberShip "
                        + "SET TypeOfMemberShip = ?, "
                        + "DateSignUp = ?, "
                        + "DateExpired = ? "
                        + "WHERE IdMember = ? ";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, type);
                stm.setDate(2, registedDate);
                stm.setDate(3, expiredDate);
                stm.setString(4, memberId);

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

    public boolean VipRegister(String memberId, String type) throws SQLException, ClassNotFoundException {

        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;
        Date registedDate = getCurrenDay();
        Date expiredDate = addMonth(registedDate, 12);

        BirdContestDTO dto = new BirdContestDTO();
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "INSERT INTO MemberShip (IdMember, DateSignUp, status, TypeOfMemberShip, DateExpired) "
                        + "VALUES (?, ?, 'true', ?, ? );";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, memberId);
                stm.setDate(2, registedDate);
                stm.setString(3, type);
                stm.setDate(4, expiredDate);

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

    public MembershipDTO getMember(String memberId) throws SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        MembershipDTO dto = new MembershipDTO();
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Select * "
                        + "From MemberShip "
                        + "Where IdMember = ? ";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
//                stm.setInt(1, contestStatus);
                stm.setString(1, memberId);

                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                if (rs.next()) {
                    String type = rs.getString("TypeOfMemberShip");
                    Date start = rs.getDate("DateSignUp");
                    Date end = rs.getDate("DateExpired");

                    dto = new MembershipDTO(memberId, type, end, end);
                } else {
                    dto = null;
                }
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MembershipDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MembershipDAO.class.getName()).log(Level.SEVERE, null, ex);
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

    public boolean checkSession(String memberId) throws SQLException, ClassNotFoundException {
        MembershipDTO member = getMember(memberId);
        long dayGap = getDayBetween(member.getDayExpired());

        if (member != null) {
            if (dayGap <= 0) {
                EndMembership(memberId);
                return false;
            } else {
                return true;
            }
        }
        return false;

    }

    private long getDayBetween(Date expired) {
        LocalDate expiredDate = expired.toLocalDate();
        LocalDate currentDate = getCurrenDay().toLocalDate();

        long dayGap = java.time.temporal.ChronoUnit.DAYS.between(currentDate, expiredDate);
//        System.out.println("dayGap: " + dayGap);
        return dayGap;
    }

    private boolean EndMembership(String memberId) throws SQLException, ClassNotFoundException {

        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "Delete MemberShip "
                        + "WHERE IdMember = ? ";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, memberId);

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

    public int updatePack(String memberId, String newType) throws SQLException {
        MembershipDTO member = getMember(memberId);
        double newCost = 0;
//        double finalCost = 0;
        if (member.getType() != null) {
            int payed = getCost(member.getType());
            int cost = getCost(newType);
            long dayGap = getDayBetween(member.getDayExpired());

            double discount = ((double) dayGap / 365.0);
            newCost = (double) cost - (payed * discount);
            newCost = roundCost(newCost);
        }
        return (int) newCost;
    }

    private double roundCost(double number) {
        return Math.round(number / 10000) * 10000;
    }

    private int getCost(String type) {
        if (type.equals("1")) {
            return 200000;
        } else if (type.equals("2")) {
            return 300000;
        } else if (type.equals("3")) {
            return 500000;
        }
        return 0;
    }
//
//    public static long calRemainingDays(Date date1, Date date2) {
//        LocalDate localDate1 = date1.toLocalDate();
//        LocalDate localDate2 = date2.toLocalDate();
//
//        return Math.abs(localDate1.toEpochDay() - localDate2.toEpochDay());
//    }

    private Date getCurrenDay() {
        LocalDate localDate = LocalDate.now();
        java.sql.Date date = Date.valueOf(localDate);
        return date;
    }

    private Date addMonth(Date date, int amount) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
//        calendar.add(Calendar.DAY_OF_YEAR, amount);
        calendar.add(Calendar.MONTH, amount);
        return new Date(calendar.getTime().getTime());
    }
}
