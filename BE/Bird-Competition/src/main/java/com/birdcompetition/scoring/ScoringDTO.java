/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.scoring;

import com.birdcompetition.birdInContest.BirdContestDTO;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ScoringDTO {

    private List<BirdContestDTO> joinerList;

    public ScoringDTO() {
    }

    public ScoringDTO(List<BirdContestDTO> joinerList) {
        this.joinerList = joinerList;
    }

    public List<BirdContestDTO> getJoinerList() {
        return joinerList;
    }

    public void setJoinerList(List<BirdContestDTO> joinerList) {
        this.joinerList = joinerList;
    }

    public int getMatchSize() {
        return joinerList.size();
    }

    public double getAvgPoint() {
        return (double) getTotalPoint() / joinerList.size();
    }

    public double getCentral() {
        return ((double) joinerList.size() + 1) / 2.0;
    }

    public int getMinEloInTop() {
        int min = getInTopList().get(0).getPrePoint();

        for (BirdContestDTO bird : getInTopList()) {
            if (bird.getPrePoint() <= min) {
                min = bird.getPrePoint();
            }
        }
        return min;
    }

    public int getTotalPoint() {
        int sum = 0;
        for (BirdContestDTO bird : joinerList) {
            sum = sum + bird.getPrePoint();
        }
        return sum;
    }

    void sort(List<BirdContestDTO> list) {
        Collections.sort(list, (BirdContestDTO b1, BirdContestDTO b2) -> b1.compareTo(b2));
    }

    public List<BirdContestDTO> getInTopList() {
        List<BirdContestDTO> inTopList = new ArrayList<>();
        for (BirdContestDTO bird : joinerList) {
            if (bird.getOrder() < getCentral()) {
                inTopList.add(bird);
            }
        }
        sort(inTopList);
        return inTopList;
    }

    public List<BirdContestDTO> getOutTopList() {
        List<BirdContestDTO> outTopList = new ArrayList<>();
        for (BirdContestDTO bird : joinerList) {
            if (bird.getOrder() > getCentral()) {
                outTopList.add(bird);
            }
        }
        sort(outTopList);
        return outTopList;
    }

}
