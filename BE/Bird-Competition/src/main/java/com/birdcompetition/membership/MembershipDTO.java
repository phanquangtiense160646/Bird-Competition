/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.membership;

import java.sql.Date;

/**
 *
 * @author Danh
 */
public class MembershipDTO {
    private String memberId;
    private String type;
    private Date daySignUp;
    private Date dayExpired;

    public MembershipDTO() {
    }

    public MembershipDTO(String memberId, String type, Date daySignUp, Date dayExpired) {
        this.memberId = memberId;
        this.type = type;
        this.daySignUp = daySignUp;
        this.dayExpired = dayExpired;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getDaySignUp() {
        return daySignUp;
    }

    public void setDaySignUp(Date daySignUp) {
        this.daySignUp = daySignUp;
    }

    public Date getDayExpired() {
        return dayExpired;
    }

    public void setDayExpired(Date dayExpired) {
        this.dayExpired = dayExpired;
    }

 
    

    
    
    
}
