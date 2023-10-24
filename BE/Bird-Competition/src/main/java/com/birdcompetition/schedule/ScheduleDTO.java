/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.schedule;

import java.io.Serializable;
import java.sql.Date;
/**
 *
 * @author Admin
 */
public class ScheduleDTO implements Serializable {

    private String id;
    private String name;
    private Date date;
    private String locationId;
    private boolean status;
    private double factor;
    private double minPoint, maxPoint;
    private double fee;
    private String userId;
    private String location;
    private int statusOfContest;

    public ScheduleDTO() {
    }

    public ScheduleDTO(String id, String name, Date date, String locationId, 
            boolean status, double factor, double minPoint, double maxPoint, 
            double fee, String userId, String location, int statusOfContest) {
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
    }

    public int getStatusOfContest() {
        return statusOfContest;
    }

    public void setStatusOfContest(int statusOfContest) {
        this.statusOfContest = statusOfContest;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
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

    public double getMinPoint() {
        return minPoint;
    }

    public void setMinPoint(double minPoint) {
        this.minPoint = minPoint;
    }

    public double getMaxPoint() {
        return maxPoint;
    }

    public void setMaxPoint(double maxPoint) {
        this.maxPoint = maxPoint;
    }

    public double getFee() {
        return fee;
    }

    public void setFee(double fee) {
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


}
