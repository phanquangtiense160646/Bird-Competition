/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.member;

import java.sql.Date;

public class MembershipDTO {
    private String memberId;
    private Date dateSignup;
    private boolean status;
    private int typeOfMemberShip;
    private String description;

    public MembershipDTO() {
    }

    public MembershipDTO(String memberId, Date dateSignup, boolean status, int typeOfMemberShip, String description) {
        this.memberId = memberId;
        this.dateSignup = dateSignup;
        this.status = status;
        this.typeOfMemberShip = typeOfMemberShip;
        this.description = description;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public Date getDateSignup() {
        return dateSignup;
    }

    public void setDateSignup(Date dateSignup) {
        this.dateSignup = dateSignup;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getTypeOfMemberShip() {
        return typeOfMemberShip;
    }

    public void setTypeOfMemberShip(int typeOfMemberShip) {
        this.typeOfMemberShip = typeOfMemberShip;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
    
}
