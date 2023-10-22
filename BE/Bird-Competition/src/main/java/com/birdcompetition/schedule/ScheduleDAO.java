/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.schedule;

import com.birdcompetition.util.DBHelper;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
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
                        + "Where Contest.LocationId = Location.LocationId ";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);

                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                while (rs.next()) {

                    String id = rs.getString("IdContest");
                    String name = rs.getString("NameOfContest");
                    Date date = rs.getDate("Date");
                    String locationId = rs.getString("LocationId");
                    boolean status = rs.getBoolean("Status");
                    double factor = rs.getDouble("Factor");
                    double minPoint = rs.getDouble("MinPoint");
                    double maxPoint = rs.getDouble("MaxPoint");
                    double fee = rs.getDouble("ParticipatingFee");
                    String userId = rs.getString("IdUser");
                    String location = rs.getString("Location");

                    ScheduleDTO dto = new ScheduleDTO(id, name, date,
                            locationId, status, factor, minPoint, maxPoint, fee, userId, location);
                    if (this.scheduleList == null) {
                        this.scheduleList = new ArrayList<>();
                    }
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
}
