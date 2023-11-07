 package com.birdcompetition.schedule;

import com.birdcompetition.birdInContest.BirdContestDAO;
import com.birdcompetition.birdInContest.BirdContestDTO;
import com.birdcompetition.util.DBHelper;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ScheduleDAO implements Serializable {

    private List<ScheduleDTO> scheduleList;

    public List<ScheduleDTO> getList() {
        return scheduleList;
    }

    public void getSchedule()
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
                        + "From Contest, Location "
                        + "Where Contest.LocationId = Location.LocationId Order by Date DESC";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);

                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                this.scheduleList = new ArrayList<>();
                while (rs.next()) {

                    int id = rs.getInt("IdContest");
                    String name = rs.getString("NameOfContest");
                    Date date = rs.getDate("Date");
                    String locationId = rs.getString("LocationId");
                    boolean status = rs.getBoolean("Status");
                    double factor = rs.getDouble("Factor");
                    int minPoint = rs.getInt("MinPoint");
                    int maxPoint = rs.getInt("MaxPoint");
                    int fee = rs.getInt("ParticipatingFee");
                    String userId = rs.getString("UserName");
                    String location = rs.getString("Location");
                    int contestStatus = rs.getInt("StatusOfContest");
                    int maxPar = rs.getInt("MaxParticipant");
                    String maxBird = rs.getString("MaxBirdJoin");
                    int currentPar = getParticipants(id);
                    LocalTime sTime = rs.getTime("StartTime").toLocalTime();
                    LocalTime eTime = rs.getTime("EndTime").toLocalTime();
                    ScheduleDTO dto = new ScheduleDTO(id, name, date, locationId, 
                            status, factor, minPoint, maxPoint, eTime, sTime, 
                            fee, userId, location, contestStatus, currentPar, maxPar, 
                            maxBird, 0);
                    scheduleList.add(dto);  
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

    public void getLocation()
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
                        + "From Location "
                        + "";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);

                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                this.scheduleList = new ArrayList<>();
                while (rs.next()) {
                    String locationId = rs.getString("LocationId");
                    String location = rs.getString("Location");

                    ScheduleDTO dto = new ScheduleDTO(locationId, true, location);
                    scheduleList.add(dto);
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

    public void getScheduleByStatus(int contestStatus)
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
                String sql = "Select * "
                        + "From Contest, Location "
                        + "Where Contest.LocationId = Location.LocationId and StatusOfContest = ?";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
//                stm.setInt(1, contestStatus);
                stm.setInt(1, contestStatus);
                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                this.scheduleList = new ArrayList<>();

                while (rs.next()) {

                    int id = rs.getInt("IdContest");
                    String name = rs.getString("NameOfContest");
                    Date date = rs.getDate("Date");
                    String locationId = rs.getString("LocationId");
                    boolean status = rs.getBoolean("Status");
                    double factor = rs.getDouble("Factor");
                    int minPoint = rs.getInt("MinPoint");
                    int maxPoint = rs.getInt("MaxPoint");
                    int fee = rs.getInt("ParticipatingFee");
                    String userId = rs.getString("UserName");
                    String location = rs.getString("Location");
                    int maxPar = rs.getInt("MaxParticipant");
                    //                    String maxBird = rs.getString("");

                    ScheduleDTO dto = new ScheduleDTO(id, name, date, locationId,
                            status, factor, minPoint, maxPoint, fee, userId,
                            location, contestStatus, maxPar, "", null, null);

                    int currentPar = getParticipants(id);
                    int checkedIn = getCheckedInParticipant(id);
                    dto.setCurrentPar(currentPar);
                    dto.setCheckedIn(checkedIn);

//                    dto.setCheckedIn(getCheckedInParticipant(id));
                    scheduleList.add(dto);
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

    public int getCheckedInParticipant(int matchID) throws SQLException, ClassNotFoundException {

        BirdContestDAO birdContest = new BirdContestDAO();
        birdContest.getJoiner(matchID);
        List<BirdContestDTO> participant = birdContest.getList();
        int parNumber = 0;

        if (participant != null) {

            parNumber = participant.size();

        }
        return parNumber;
    }

    public ScheduleDTO getScheduleById(int contestId)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        ScheduleDTO match = new ScheduleDTO();
        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Select * "
                        + "From Contest, Location "
                        + "Where Contest.LocationId = Location.LocationId and IdContest = ?";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
//                stm.setInt(1, contestStatus);
                stm.setInt(1, contestId);
                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                while (rs.next()) {

//                    String id = rs.getString("IdContest");
                    String name = rs.getString("NameOfContest");
                    Date date = rs.getDate("Date");
                    String locationId = rs.getString("LocationId");
                    boolean status = rs.getBoolean("Status");
                    double factor = rs.getDouble("Factor");
                    int minPoint = rs.getInt("MinPoint");
                    int maxPoint = rs.getInt("MaxPoint");
                    int fee = rs.getInt("ParticipatingFee");
                    String userId = rs.getString("UserName");
                    String location = rs.getString("Location");
                    int contestStatus = rs.getInt("StatusOfContest");
                    int maxPar = rs.getInt("MaxParticipant");
                    String maxBird = rs.getString("MaxBirdJoin");
                    LocalTime sTime = rs.getTime("StartTime").toLocalTime();
                    LocalTime eTime = rs.getTime("EndTime").toLocalTime();
                    match = new ScheduleDTO(contestId, name, date, locationId, status,
                            factor, minPoint, maxPoint, fee, userId, location,
                            contestStatus, maxPar, maxBird, sTime, eTime);
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
        return match;
    }

    public boolean setStatus(int id, int status)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            if (con != null) {
                //2. Create SQL String 
                String sql = "UPDATE Contest "
                        + "SET StatusOfContest = ? "
                        + "WHERE IdContest = ? ";
                //3. Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setInt(1, status);
                stm.setInt(2, id);

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

    public boolean contestInsert(ScheduleDTO dto)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 

                String sql = "Insert Into Contest("
                        + "NameOfContest, Date, LocationId, Status, Factor, MinPoint, "
                        + "MaxPoint, MaxParticipant, ParticipatingFee, IdRule, UserName, "
                        + "StatusOfContest, MaxBirdJoin, StartTime, EndTime"
                        + ") Values("
                        + "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?"
                        + ")";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, dto.getName());
                stm.setDate(2, dto.getDate());
                stm.setString(3, dto.getLocationId());
                stm.setBoolean(4, true);
                stm.setDouble(5, dto.getFactor());
                stm.setInt(6, dto.getMinPoint());
                stm.setInt(7, dto.getMaxPoint());
                stm.setInt(8, dto.getMaxPar());
                stm.setInt(9, dto.getFee());
                stm.setString(10, "1");
                stm.setString(11, dto.getUserId());
                stm.setInt(12, dto.getStatusOfContest());
                stm.setString(13, dto.getMaxBird());
                stm.setTime(14, Time.valueOf(dto.getStartTime()));
                stm.setTime(15, Time.valueOf(dto.getEndTime()));
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
    public boolean contestUpdate(ScheduleDTO dto)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        boolean result = false;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 

                String sql = "UPDATE Contest "
                        + "SET NameOfContest = ?, Date = ?, LocationId = ?, Status = ?, Factor = ?, MinPoint = ?, "
                            + "MaxPoint = ?, MaxParticipant = ?, ParticipatingFee = ?, IdRule = ?, "
                            + "UserName = ?, StatusOfContest = ?, MaxBirdJoin = ?, StartTime = ?, EndTime = ? "
                        + "WHERE IdContest = ? ";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setString(1, dto.getName());
                stm.setDate(2, dto.getDate());
                stm.setString(3, dto.getLocationId());
                stm.setBoolean(4, true);
                stm.setDouble(5, dto.getFactor());
                stm.setInt(6, dto.getMinPoint());
                stm.setInt(7, dto.getMaxPoint());
                stm.setInt(8, dto.getMaxPar());
                stm.setInt(9, dto.getFee());
                stm.setString(10, "1");
                stm.setString(11, dto.getUserId());
                stm.setInt(12, dto.getStatusOfContest());
                stm.setString(13, dto.getMaxBird());
                stm.setTime(14, Time.valueOf(dto.getStartTime()));
                stm.setTime(15, Time.valueOf(dto.getEndTime()));
                stm.setInt(16, dto.getId());
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

    public int getParticipants(int contestId)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        int result = 0;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            //check 
            if (con != null) {
                //2.Creat SQL String 
                String sql = "Select count(IdContest) as Parcipants "
                        + "From BirdContest "
                        + "Where IdContest = ? ";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);
                stm.setInt(1, contestId);
                //4.Exercute Query
                rs = stm.executeQuery();

                //5.Process
                if (rs.next()) {
                    result = rs.getInt("Parcipants");
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

    public long getDayBetween(Date fightDate) {
        LocalDate expiredDate = fightDate.toLocalDate();
        LocalDate currentDate = getCurrenDay().toLocalDate();

        long dayGap = java.time.temporal.ChronoUnit.DAYS.between(currentDate, expiredDate);
        System.out.println("dayGap: " + dayGap);
        return dayGap;
    }

    private Date getCurrenDay() {
        LocalDate localDate = LocalDate.now();
        java.sql.Date date = Date.valueOf(localDate);
        return date;
    }
}
