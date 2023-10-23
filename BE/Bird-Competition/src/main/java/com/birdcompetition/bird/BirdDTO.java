/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.bird;

import java.io.Serializable;

/**
 *
 * @author admin
 */
public class BirdDTO implements Serializable, Comparable<BirdDTO> {

    private String birdID;
    private String birdName;
    private String species;
    private int point;
    private boolean status;
    private String memberID;
    private String photoPath;
    private int win;
    private int lose;
    private int tie;
    private int matchNumber;
    private String trainer;

    public BirdDTO() {
    }

    public BirdDTO(String birdID, String birdName, String species, int point, boolean status, String memberID, String photoPath, int win, int lose, int tie, int matchNumber) {
        this.birdID = birdID;
        this.birdName = birdName;
        this.species = species;
        this.point = point;
        this.status = status;
        this.memberID = memberID;
        this.photoPath = photoPath;
        this.win = win;
        this.lose = lose;
        this.tie = tie;
        this.matchNumber = matchNumber;
        
    }

    public BirdDTO(String birdName, String species, int point, String trainer, String photoPath, int win, int lose, int tie, int matchNumber) {
        this.birdID = null;
        this.birdName = birdName;
        this.species = species;
        this.point = point;
        this.status = true;
        this.memberID = null;
        this.photoPath = photoPath;
        this.win = win;
        this.lose = lose;
        this.tie = tie;
        this.matchNumber = matchNumber;
        this.trainer = trainer;

    }

    public BirdDTO(String birdID, String birdName, String species, int point, boolean status, String memberID) {
        this.birdID = birdID;
        this.birdName = birdName;
        this.species = species;
        this.point = point;
        this.status = status;
        this.memberID = memberID;
    }

    
    public String getBirdID() {
        return birdID;
    }

    public void setBirdID(String birdID) {
        this.birdID = birdID;
    }

    public String getBirdName() {
        return birdName;
    }

    public void setBirdName(String birdName) {
        this.birdName = birdName;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getMemberID() {
        return memberID;
    }

    public void setMemberID(String memberID) {
        this.memberID = memberID;
    }

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }

    public int getWin() {
        return win;
    }

    public void setWin(int win) {
        this.win = win;
    }

    public int getLose() {
        return lose;
    }

    public void setLose(int lose) {
        this.lose = lose;
    }

    public int getTie() {
        return tie;
    }

    public void setTie(int tie) {
        this.tie = tie;
    }

    public int getMatchNumber() {
        return matchNumber;
    }

    public void setMatchNumber(int matchNumber) {
        this.matchNumber = matchNumber;
    }

    public String getTrainer() {
        return trainer;
    }

    public void setTrainer(String trainer) {
        this.trainer = trainer;
    }
    
    

    public double WinRate() {
//        double cal = this.win;
        double winRate = win / matchNumber * 100;
        System.out.println("-------------");
        System.out.println("name: " + birdName);
        System.out.println("win: " + win);
        System.out.println("match: " + matchNumber);
        System.out.println(winRate);
        return winRate;
    }
    
    public double calWinRate() {
        if (matchNumber == 0) {
            return 0.0;
        }
        double cal = ((double) win / matchNumber) * 100.0;
        cal = Math.round(cal);
        return cal;
    }


    @Override
    public int compareTo(BirdDTO o) {
        return Integer.compare(this.point, o.point);
    }

    @Override
    public String toString() {
        return "BirdDTO{" + "birdID=" + birdID + ", birdName=" + birdName + ", species=" + species + ", point=" + point + ", memberID=" + memberID + ", win=" + win + ", lose=" + lose + ", tie=" + tie + ", matchNumber=" + matchNumber + ", trainer=" + trainer + '}';
    }

}
