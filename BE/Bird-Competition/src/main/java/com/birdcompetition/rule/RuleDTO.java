/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.rule;

/**
 *
 * @author MSI
 */
public class RuleDTO {
    private int IdRule;
    private String NameOfRule;
    private String DetailOfRule;
    private boolean Status;

    public RuleDTO() {
    }

    public RuleDTO(int IdRule, String NameOfRule, String DetailOfRule, boolean Status) {
        this.IdRule = IdRule;
        this.NameOfRule = NameOfRule;
        this.DetailOfRule = DetailOfRule;
        this.Status = Status;
    }

    public int getIdRule() {
        return IdRule;
    }

    public void setIdRule(int IdRule) {
        this.IdRule = IdRule;
    }

    public String getNameOfRule() {
        return NameOfRule;
    }

    public void setNameOfRule(String NameOfRule) {
        this.NameOfRule = NameOfRule;
    }

    public String getDetailOfRule() {
        return DetailOfRule;
    }

    public void setDetailOfRule(String DetailOfRule) {
        this.DetailOfRule = DetailOfRule;
    }

    public boolean isStatus() {
        return Status;
    }

    public void setStatus(boolean Status) {
        this.Status = Status;
    }

    @Override
    public String toString() {
        return "RuleDTO{" + "IdRule=" + IdRule + ", NameOfRule=" + NameOfRule + ", DetailOfRule=" + DetailOfRule + ", Status=" + Status + '}';
    }
      
    
}
