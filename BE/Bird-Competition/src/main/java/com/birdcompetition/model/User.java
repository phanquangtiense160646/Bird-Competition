/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.birdcompetition.model;

import java.io.Serializable;

/**
 *
 * @author 84366
 */
public class User implements Serializable{
    private String idUser;
    private String userName;
    private String userPassword;
    private String userGmail;
    private int userRole;
    private String idMember;
    private String fullName;
    private String dateOfBirth;
    private String country;
    private int phone;
    private String gender;
    

    public User() {
    }

    public User(String idUser, String userName, String userPassword, String userGmail, int userRole, String idMember, String fullName, String dateOfBirth, String country, int phone, String gender) {
        this.idUser = idUser;
        this.userName = userName;
        this.userPassword = userPassword;
        this.userGmail = userGmail;
        this.userRole = userRole;
        this.idMember = idMember;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.country = country;
        this.phone = phone;
        this.gender = gender;
    }

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserGmail() {
        return userGmail;
    }

    public void setUserGmail(String userGmail) {
        this.userGmail = userGmail;
    }

    public int getUserRole() {
        return userRole;
    }

    public void setUserRole(int userRole) {
        this.userRole = userRole;
    }

    public String getIdMember() {
        return idMember;
    }

    public void setIdMember(String idMember) {
        this.idMember = idMember;
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

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    
    
    
}
