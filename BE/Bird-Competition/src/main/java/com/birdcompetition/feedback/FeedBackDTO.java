/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.feedback;

import java.sql.Date;

/**
 *
 * @author MSI
 */
public class FeedBackDTO {
    private String IdMember;
    private String Description;
    private Date date;
    private boolean Status;

    public FeedBackDTO() {
    }

    public FeedBackDTO(String IdMember, String Description, Date date, boolean Status) {
        this.IdMember = IdMember;
        this.Description = Description;
        this.date = date;
        this.Status = Status;
    }

    public String getIdMember() {
        return IdMember;
    }

    public void setIdMember(String IdMember) {
        this.IdMember = IdMember;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public boolean isStatus() {
        return Status;
    }

    public void setStatus(boolean Status) {
        this.Status = Status;
    }

    @Override
    public String toString() {
        return "FeedBackDTO{" + "IdMember=" + IdMember + ", Description=" + Description + ", date=" + date + ", Status=" + Status + '}';
    }
    
    
}
