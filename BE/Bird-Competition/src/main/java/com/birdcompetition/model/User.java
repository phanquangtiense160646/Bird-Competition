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

    public User() {
    }

    public User(String idUser, String userName, String userPassword, String userGmail, int userRole) {
        this.idUser = idUser;
        this.userName = userName;
        this.userPassword = userPassword;
        this.userGmail = userGmail;
        this.userRole = userRole;
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

    
}
