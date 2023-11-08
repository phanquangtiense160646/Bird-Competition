/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.feedback;

import java.io.Serializable;



/**
 *
 * @author MSI
 */
public class FeedBackDTO implements Serializable{
    private int IdFeedback;
    private String IdMember;
    private String Description;
    
  

    public FeedBackDTO() {
    }

    public FeedBackDTO(int IdFeedback, String IdMember, String Description) {
        this.IdFeedback = IdFeedback;
        this.IdMember = IdMember;
        this.Description = Description;
    }

    public int getIdFeedback() {
        return IdFeedback;
    }

    public void setIdFeedback(int IdFeedback) {
        this.IdFeedback = IdFeedback;
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
}
