package com.birdcompetition.birdInContest;

import com.birdcompetition.bird.BirdDTO;
import java.io.Serializable;

/**
 *
 * @author Danh
 */
public class BirdContestDTO implements Serializable, Comparable<BirdContestDTO>{
   private String birdID;
   private String matchID;
   private int order;
   private int prePoint;
   private int postPoint;
   private boolean checkIn;
   private String checkInCode;
   private String birdName;
   private String trainer;
   private String memberID;
   private int stdPoint;;
   private int eloPoint;;

    public BirdContestDTO() {
    }



    public BirdContestDTO(String birdID, String matchID, int order, int prePoint, int postPoint, boolean checkIn, String checkInCode, String birdName, String trainer, String memberID) {
        this.birdID = birdID;
        this.matchID = matchID;
        this.order = order;
        this.prePoint = prePoint;
        this.postPoint = postPoint;
        this.checkIn = checkIn;
        this.checkInCode = checkInCode;
        this.birdName = birdName;
        this.trainer = trainer;
        this.memberID = memberID;
        this.stdPoint = 0;
        this.eloPoint = 0;
    }

    public String getMemberID() {
        return memberID;
    }

    public void setMemberID(String memberID) {
        this.memberID = memberID;
    }

    public int getStdPoint() {
        return stdPoint;
    }

    public void setStdPoint(int stdPoint) {
        this.stdPoint = stdPoint;
    }

    public int getEloPoint() {
        return eloPoint;
    }

    public void setEloPoint(int eloPoint) {
        this.eloPoint = eloPoint;
    }

    

    public String getBirdName() {
        return birdName;
    }

    public void setBirdName(String birdName) {
        this.birdName = birdName;
    }

    public String getTrainer() {
        return trainer;
    }

    public void setTrainer(String trainer) {
        this.trainer = trainer;
    }

    public String getBirdID() {
        return birdID;
    }

    public void setBirdID(String birdID) {
        this.birdID = birdID;
    }

    public String getMatchID() {
        return matchID;
    }

    public void setMatchID(String matchID) {
        this.matchID = matchID;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public void setPrePoint(int prePoint) {
        this.prePoint = prePoint;
    }

    public void setPostPoint(int postPoint) {
        this.postPoint = postPoint;
    }

    public boolean isCheckIn() {
        return checkIn;
    }

    public void setCheckIn(boolean checkIn) {
        this.checkIn = checkIn;
    }

    public String getCheckInCode() {
        return checkInCode;
    }

    public void setCheckInCode(String checkInCode) {
        this.checkInCode = checkInCode;
    }
        public int getPrePoint() {
        return prePoint;
    }

    public int getPostPoint() {
        return postPoint;
    }

    @Override
    public String toString() {
        return "BirdContestDTO{" + "birdID=" + birdID + ", matchID=" + matchID + ", order=" + order + ", prePoint=" + prePoint + ", postPoint=" + postPoint + ", checkIn=" + checkIn + ", checkInCode=" + checkInCode + '}';
    }

    @Override
    public int compareTo(BirdContestDTO o) {
        return Integer.compare(this.order, o.order);
    }
    
    
}
