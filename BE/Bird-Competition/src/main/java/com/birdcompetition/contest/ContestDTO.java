/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.contest;

import java.io.Serializable;

/**
 *
 * @author admin
 */
public class ContestDTO implements Serializable {
    private String idContest;
    private String nameOfContest;
    private String date;
    private String locationId;
    private boolean status;
    private double factor;
    private int minPoint;
    private int maxPoint;
    private double participatingFee;
    private String idUser;
    private String idRule;
    private int statusOfContest;
    private String idBird;
    private int rank;
    private int beforePoint;
    private int afterPoint;
    private boolean checkin;

    public ContestDTO() {
    }

    public ContestDTO(String idContest, String nameOfContest, String date, String locationId, boolean status, double factor, int minPoint, int maxPoint, double participatingFee, String idUser, String idRule, int statusOfContest, String idBird, int rank, int beforePoint, int afterPoint, boolean checkin) {
        this.idContest = idContest;
        this.nameOfContest = nameOfContest;
        this.date = date;
        this.locationId = locationId;
        this.status = status;
        this.factor = factor;
        this.minPoint = minPoint;
        this.maxPoint = maxPoint;
        this.participatingFee = participatingFee;
        this.idUser = idUser;
        this.idRule = idRule;
        this.statusOfContest = statusOfContest;
        this.idBird = idBird;
        this.rank = rank;
        this.beforePoint = beforePoint;
        this.afterPoint = afterPoint;
        this.checkin = checkin;
    }

    public ContestDTO(String idContest, String nameOfContest, String date, String locationId, boolean status, double factor, int minPoint, int maxPoint, double participatingFee, String idBird, int beforePoint, int afterPoint) {
        this.idContest = idContest;
        this.nameOfContest = nameOfContest;
        this.date = date;
        this.locationId = locationId;
        this.status = status;
        this.factor = factor;
        this.minPoint = minPoint;
        this.maxPoint = maxPoint;
        this.participatingFee = participatingFee;
        this.idBird = idBird;
        this.beforePoint = beforePoint;
        this.afterPoint = afterPoint;
    }
    
    

    public String getIdContest() {
        return idContest;
    }

    public void setIdContest(String idContest) {
        this.idContest = idContest;
    }

    public String getNameOfContest() {
        return nameOfContest;
    }

    public void setNameOfContest(String nameOfContest) {
        this.nameOfContest = nameOfContest;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
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

    public double getParticipatingFee() {
        return participatingFee;
    }

    public void setParticipatingFee(double participatingFee) {
        this.participatingFee = participatingFee;
    }

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }

    public String getIdRule() {
        return idRule;
    }

    public void setIdRule(String idRule) {
        this.idRule = idRule;
    }

    public int getStatusOfContest() {
        return statusOfContest;
    }

    public void setStatusOfContest(int statusOfContest) {
        this.statusOfContest = statusOfContest;
    }

    public String getIdBird() {
        return idBird;
    }

    public void setIdBird(String idBird) {
        this.idBird = idBird;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    public int getBeforePoint() {
        return beforePoint;
    }

    public void setBeforePoint(int beforePoint) {
        this.beforePoint = beforePoint;
    }

    public int getAfterPoint() {
        return afterPoint;
    }

    public void setAfterPoint(int afterPoint) {
        this.afterPoint = afterPoint;
    }

    public boolean isCheckin() {
        return checkin;
    }

    public void setCheckin(boolean checkin) {
        this.checkin = checkin;
    }

    
}
