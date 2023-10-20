/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.bird;

/**
 *
 * @author admin
 */
public class BirdDTO implements Comparable<BirdDTO> {

    private String birdID;
    private String birdName;
    private String species;
    private int point;
    private boolean status;
    private String memberID;
    private String photoPath;
    private String win;
    private String lose;
    private String tie;
    private int matchNumber;
    private String trainer;

    public BirdDTO() {
    }

    public BirdDTO(String birdID, String birdName, String species, int point, boolean status, String memberID, String photoPath, String win, String lose, String tie, int matchNumber) {
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
        this.trainer = null;
    }

    public BirdDTO(String birdName, String species, int point, String trainer, String photoPath, String win, String lose, String tie, int matchNumber) {
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

    public String getWin() {
        return win;
    }

    public void setWin(String win) {
        this.win = win;
    }

    public String getLose() {
        return lose;
    }

    public void setLose(String lose) {
        this.lose = lose;
    }

    public String getTie() {
        return tie;
    }

    public void setTie(String tie) {
        this.tie = tie;
    }

    public int getMatchNumber() {
        return matchNumber;
    }

    public void setMatchNumber(int matchNumber) {
        this.matchNumber = matchNumber;
    }

    @Override
    public int compareTo(BirdDTO o) {
        return Integer.compare(this.point, o.point);
    }

}
