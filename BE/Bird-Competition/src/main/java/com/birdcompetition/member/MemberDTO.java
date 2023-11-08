package com.birdcompetition.member;

import com.birdcompetition.bird.BirdDTO;

/**
 *
 * @author admin
 */
public class MemberDTO {
    private String id;
    private String fullName;
    private String dateOfBirth;
    private String country;
    private int phoneNumber;
    private boolean status;
    private String gender;

    public MemberDTO() {
    }

    public MemberDTO(String id, String fullName, String dateOfBirth, String country, int phoneNumber, boolean status, String gender) {
        this.id = id;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.country = country;
        this.phoneNumber = phoneNumber;
        this.status = status;
        this.gender = gender;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "MemberDTO{" + "id=" + id + ", fullName=" + fullName + ", dateOfBirth=" + dateOfBirth + ", country=" + country + ", phoneNumber=" + phoneNumber + ", status=" + status + ", gender=" + gender + '}';
    }
    
      
}
