/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.schedule;

import java.io.Serializable;

/**
 *
 * @author Admin
 */
public class ScheduleError implements Serializable{
    private String dateErr;
    private String factorErr;
    private String contestNameErr;
    private String minPointErr;
    private String maxPointErr;
    private String maxParErr;
    private String maxBirdInContestErr;
    private String feeErr;
    private String placeErr;
    private String sTimeErr;
    private String eTimeErr;

    public ScheduleError() {
    }

    public String getsTimeErr() {
        return sTimeErr;
    }

    public void setsTimeErr(String sTimeErr) {
        this.sTimeErr = sTimeErr;
    }

    public String geteTimeErr() {
        return eTimeErr;
    }

    public void seteTimeErr(String eTimeErr) {
        this.eTimeErr = eTimeErr;
    }
    
    public String getDateErr() {
        return dateErr;
    }

    public void setDateErr(String dateErr) {
        this.dateErr = dateErr;
    }

    public String getFactorErr() {
        return factorErr;
    }

    public void setFactorErr(String factorErr) {
        this.factorErr = factorErr;
    }

    public String getContestNameErr() {
        return contestNameErr;
    }

    public void setContestNameErr(String contestNameErr) {
        this.contestNameErr = contestNameErr;
    }

    public String getMinPointErr() {
        return minPointErr;
    }

    public void setMinPointErr(String minPointErr) {
        this.minPointErr = minPointErr;
    }

    public String getMaxPointErr() {
        return maxPointErr;
    }

    public void setMaxPointErr(String maxPointErr) {
        this.maxPointErr = maxPointErr;
    }

    public String getMaxParErr() {
        return maxParErr;
    }

    public void setMaxParErr(String maxParErr) {
        this.maxParErr = maxParErr;
    }

    public String getMaxBirdInContestErr() {
        return maxBirdInContestErr;
    }

    public void setMaxBirdInContestErr(String maxBirdInContestErr) {
        this.maxBirdInContestErr = maxBirdInContestErr;
    }

    public String getFeeErr() {
        return feeErr;
    }

    public void setFeeErr(String feeErr) {
        this.feeErr = feeErr;
    }

    public String getPlaceErr() {
        return placeErr;
    }

    public void setPlaceErr(String placeErr) {
        this.placeErr = placeErr;
    }
    
}
