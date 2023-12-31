package com.birdcompetition.schedule;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.time.LocalTime;

/**
 *
 * @author Admin
 */
public class ScheduleDTO implements Serializable {

    private int id;
    private String name;
    private Date date;
    private String locationId;
    private boolean status;
    private double factor;
    private int minPoint, maxPoint;
    private LocalTime endTime, startTime;
    private int fee;
    private String userId;
    private String location;
    private int statusOfContest;
    private int currentPar;
    private int maxPar;
    private String maxBird;
    private int checkedIn;
    private Time timeStart;
    private Time timeEnd;

    public ScheduleDTO() {
    }

    public ScheduleDTO(int id, String name, Date date, String locationId, 
            boolean status, double factor, int minPoint, int maxPoint, LocalTime endTime, 
            LocalTime startTime, int fee, String userId, String location, int statusOfContest, 
            int currentPar, int maxPar, String maxBird, int checkedIn) {
        this.id = id;
        this.name = name;
        this.date = date;
        this.locationId = locationId;
        this.status = status;
        this.factor = factor;
        this.minPoint = minPoint;
        this.maxPoint = maxPoint;
        this.endTime = endTime;
        this.startTime = startTime;
        this.fee = fee;
        this.userId = userId;
        this.location = location;
        this.statusOfContest = statusOfContest;
        this.currentPar = currentPar;
        this.maxPar = maxPar;
        this.maxBird = maxBird;
        this.checkedIn = 0;
    }

    public ScheduleDTO(int id, String name, Date date, String locationId,
            boolean status, double factor, int minPoint, int maxPoint, int fee,
            String userId, String location, int statusOfContest, int maxPar, String maxBird,Time startTime, Time endTime) {
        this.id = id;
        this.name = name;
        this.date = date;
        this.locationId = locationId;
        this.status = status;
        this.factor = factor;
        this.minPoint = minPoint;
        this.maxPoint = maxPoint;
        this.fee = fee;
        this.userId = userId;
        this.location = location;
        this.statusOfContest = statusOfContest;
        this.maxPar = maxPar;
        this.maxBird = maxBird;
        this.checkedIn = 0;
         this.timeStart = startTime;
        this.timeEnd = endTime;
    }

    public ScheduleDTO(int id, String name, Date date, String locationId,
            boolean status, double factor, int minPoint, int maxPoint,
            int fee, String userId, String location, int statusOfContest, int maxPar, 
            String maxBird, LocalTime start, LocalTime end) {
        this.id = id;
        this.name = name;
        this.date = date;
        this.locationId = locationId;
        this.status = status;
        this.factor = factor;
        this.minPoint = minPoint;
        this.maxPoint = maxPoint;
        this.fee = fee;
        this.userId = userId;
        this.location = location;
        this.statusOfContest = statusOfContest;
        this.maxPar = maxPar;
        this.maxBird = maxBird;
        this.startTime = start;
        this.endTime = end;
        this.checkedIn = 0;
       

    }

    public LocalTime getEndTime() {
        return endTime;
    }

    public void setEndTime(LocalTime endTime) {
        this.endTime = endTime;
    }

    public LocalTime getStartTime() {
        return startTime;
    }

    public void setStartTime(LocalTime startTime) {
        this.startTime = startTime;
    }

    public int getCheckedIn() {
        return checkedIn;
    }

    public void setCheckedIn(int checkedIn) {
        this.checkedIn = checkedIn;
    }

    public ScheduleDTO(String locationId, boolean status, String location) {
        this.locationId = locationId;
        this.status = status;
        this.location = location;
    }

    public int getCurrentPar() {
        return currentPar;
    }

    public void setCurrentPar(int currentPar) {
        this.currentPar = currentPar;
    }

    public String getMaxBird() {
        return maxBird;
    }

    public void setMaxBird(String maxBird) {
        this.maxBird = maxBird;
    }

    public int getMaxPar() {
        return maxPar;
    }

    public void setMaxPar(int maxPar) {
        this.maxPar = maxPar;
    }

    public int getStatusOfContest() {
        return statusOfContest;
    }

    public void setStatusOfContest(int statusOfContest) {
        this.statusOfContest = statusOfContest;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }

    public String getDateFormat() {
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        return sdf.format(date);
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getLocationId() {
        return locationId;
    }

    public void setLocationId(String locationId) {
        this.locationId = locationId;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public double getFactor() {
        return factor;
    }

    public void setFactor(double factor) {
        this.factor = factor;
    }

    public int getMinPoint() {
        return minPoint;
    }

    public void setMinPoint(int minPoint) {
        this.minPoint = minPoint;
    }

    public int getMaxPoint() {
        return maxPoint;
    }

    public void setMaxPoint(int maxPoint) {
        this.maxPoint = maxPoint;
    }

    public int getFee() {
        return fee;
    }

    public Time getTimeStart() {
        return timeStart;
    }

    public void setTimeStart(Time timeStart) {
        this.timeStart = timeStart;
    }

    public Time getTimeEnd() {
        return timeEnd;
    }

    public void setTimeEnd(Time timeEnd) {
        this.timeEnd = timeEnd;
    }

    public String getBronzeFee() {
        return String.format("%.0f", fee - fee * 0.1);
    }

    public String getSilverFee() {
        return String.format("%.0f", fee - fee * 0.15);
    }

    public String getGoldFee() {
        return String.format("%.0f", fee - fee * 0.2);
    }

    public void setFee(int fee) {
        this.fee = fee;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    private Time getCurrentTime() {
        java.util.Date utilDate = new java.util.Date();
        Time currentTime = new Time(utilDate.getTime());

        return currentTime;
    }

    public boolean isAfterTime(Time timeEnd) {
        LocalTime currentTime = getCurrentTime().toLocalTime();
        LocalTime comparisonTime = timeEnd.toLocalTime();

        boolean isBefore = currentTime.isAfter(comparisonTime);
        return isBefore;
    }
    
    public boolean isAfterTime(LocalTime timeEnd) {
        LocalTime currentTime = getCurrentTime().toLocalTime();
//        LocalTime comparisonTime = timeEnd.toLocalTime();

        boolean isBefore = currentTime.isAfter(timeEnd);
        return isBefore;
    }

    @Override
    public String toString() {
        return "ScheduleDTO{" + "id=" + id + ", name=" + name + ", date=" + date + ", locationId=" + locationId + ", status=" + status + ", factor=" + factor + ", minPoint=" + minPoint + ", maxPoint=" + maxPoint + ", fee=" + fee + ", userId=" + userId + ", location=" + location + ", statusOfContest=" + statusOfContest + '}';
    }

}
