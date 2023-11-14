package com.birdcompetition.member;

import com.birdcompetition.bird.BirdDTO;
import java.io.Serializable;

/**
 *
 * @author admin
 */
public class MemberDTO implements Serializable{
    private String id;
    private String fullName;
    private String dateOfBirth;
    private String country;
    private String phoneNumber;
    private boolean status;
    private String gender;
    private String username;
    private String password;
    private int role;

    public MemberDTO() {
    }

    public MemberDTO(String id, String fullName, String dateOfBirth, String country, String phoneNumber, boolean status, String gender) {
        this.id = id;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.country = country;
        this.phoneNumber = phoneNumber;
        this.status = status;
        this.gender = gender;
    }

    public MemberDTO(String id, String fullName, String dateOfBirth, String country, String phoneNumber, String gender) {
        this.id = id;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.country = country;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
    }

    public MemberDTO(String id, String fullName, String dateOfBirth, String country, String phoneNumber, String gender, String username, String password) {
        this.id = id;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.country = country;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.username = username;
        this.password = password;
    }

    public MemberDTO(String id, String fullName, String dateOfBirth, String country, String phoneNumber, String username, String password, int role) {
        this.id = id;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.country = country;
        this.phoneNumber = phoneNumber;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
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
