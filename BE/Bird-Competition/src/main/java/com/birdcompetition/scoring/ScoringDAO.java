/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.scoring;

import com.birdcompetition.birdInContest.BirdContestDTO;
import java.util.Collections;
import java.util.List;

/**
 *
 * @author Danh
 */
public class ScoringDAO {

    public List<BirdContestDTO> Scoring(List<BirdContestDTO> list) {
        ScoringDTO scoring = new ScoringDTO(list);
        double central = scoring.getCentral();
        int sumInTop = 0;
        int sumOutTop = 0;
        for (BirdContestDTO bird : list) {
            int order = bird.getOrder();

            if (order < central) { // vào Top
                int stdPoint = calStdPointWin(bird, scoring);
                int eloPoint = calEloPointWin(bird, scoring);
                bird.setStdPoint(stdPoint);
                bird.setEloPoint(eloPoint);

                sumInTop = sumInTop + eloPoint + stdPoint;
                bird.setPostPoint(bird.getPrePoint() + stdPoint + eloPoint);

            } else if (order > central) { // Out top
                int stdPoint = calStdpointLose(bird, scoring);
                int eloPoint = calEloPointLose(bird, scoring);
                bird.setStdPoint(stdPoint);
                bird.setEloPoint(eloPoint);

                sumOutTop = sumOutTop + eloPoint + stdPoint;
                int afterpoint = bird.getPrePoint() + stdPoint + eloPoint;
                if (afterpoint <= 0) {
                    afterpoint = 0;
                }
                bird.setPostPoint(afterpoint);
            } else if (bird.getOrder() == central) { // giữa
                bird.setPostPoint(bird.getPrePoint());
            }
        }
        int gap = -(sumInTop + sumOutTop);
        if (gap >= 0) {
            for (BirdContestDTO bird : list) {
                if (bird.getOrder() == 1) {
                    bird.setPostPoint(bird.getPostPoint() + gap);
                }
            }
        } else if (gap <= 0) {
            for (BirdContestDTO bird : list) {
                if (bird.getOrder() == scoring.getMatchSize()) {
                    bird.setPostPoint(bird.getPostPoint() + gap);
                }
            }
        }

        System.out.println("min: " + scoring.getMinEloInTop());
        sort(list);
        return list;
    }

    void sort(List<BirdContestDTO> list) {
        Collections.sort(list, (BirdContestDTO b1, BirdContestDTO b2) -> b1.compareTo(b2));
    }

    private int calStdPointWin(BirdContestDTO bird, ScoringDTO scoring) {
        int order = bird.getOrder();
        int base = 0;
        if (scoring.getMatchSize() % 2 == 1) {
            base = (int) scoring.getCentral();

        } else {
            base = (int) scoring.getCentral() + 1;

        }

        int stdPoint = 5 * (base - order);
        if (order == 1) {
            stdPoint = stdPoint + 5;
        }
        return stdPoint;
    }

    private int calEloPointWin(BirdContestDTO bird, ScoringDTO scoring) {

        double pointRate = reverseRate(bird, scoring);
        double winRate = getSumWinPointRate(scoring);
        double eloPoint = pointRate * winRate;
//        double eloPoint = 0;
        return (int) Math.round(eloPoint);
    }

    private double reverseRate(BirdContestDTO bird, ScoringDTO scoring) {
        int min = scoring.getMinEloInTop();
        double rate1 = bird.getPrePoint() / scoring.getAvgPoint();
        System.out.println("rate1 = " + rate1);

        double rate2 = rate1 / (scoring.getMinEloInTop() / scoring.getAvgPoint());
        System.out.println("rate2 = " + rate2);

        double pointRate = 0;
        if (bird.getPrePoint() == min) {
            pointRate = 1;
        } else {
            pointRate = rate1 / rate2;
        }
        System.out.println("rate3 = " + pointRate);
        return pointRate;
    }

    private double getSumWinPointRate(ScoringDTO scoring) {
        int min = scoring.getMinEloInTop();
        double total = 0;

        for (BirdContestDTO bird : scoring.getInTopList()) {
            double rate1 = bird.getPrePoint() / scoring.getAvgPoint();

            double rate2 = rate1 / (scoring.getMinEloInTop() / scoring.getAvgPoint());

            double pointRate = 0;
            if (bird.getPrePoint() == min) {
                pointRate = 1;

            } else {
                pointRate = rate1 / rate2;
            }
            total = total + pointRate;
        }
        double rate = (scoring.getMatchSize() * 5) / total;
        return rate;
    }

////////////////////////////////////////////////////////////////
    private int calStdpointLose(BirdContestDTO bird, ScoringDTO scoring) {
        int order = bird.getOrder();
        int base = (int) scoring.getCentral();

        int stdPoint = 5 * (base - order);
        if (order == scoring.getMatchSize()) {
            stdPoint = stdPoint - 5;
        }
        return stdPoint;
    }

    private int calEloPointLose(BirdContestDTO bird, ScoringDTO scoring) {

        double pointRate = bird.getPrePoint() / scoring.getAvgPoint();
        double loseRate = getSumLosePointRate(scoring);
        double eloPoint = -pointRate * loseRate;
//        double eloPoint = 0;
        return (int) Math.round(eloPoint);
    }

    private double getSumLosePointRate(ScoringDTO scoring) {
        double total = 0;
        for (BirdContestDTO bird : scoring.getOutTopList()) {
            total = total + (bird.getPrePoint() / scoring.getAvgPoint());
        }
        double rate = (scoring.getMatchSize() * 5) / total;
        return rate;
    }
}
