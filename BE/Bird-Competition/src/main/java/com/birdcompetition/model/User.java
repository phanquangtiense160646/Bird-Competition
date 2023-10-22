/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.birdcompetition.model;

/**
 *
 * @author 84366
 */
public class User {
    private int IdUser;
    private String UserName;
    private String UserPassword;
    private String UserGmail;
    private String UserRole;

    public User() {
    }

    public User(int IdUser, String UserName, String UserPassword, String UserGmail, String UserRole) {
        this.IdUser = IdUser;
        this.UserName = UserName;
        this.UserPassword = UserPassword;
        this.UserGmail = UserGmail;
        this.UserRole = UserRole;
    }

    public int getIdUser() {
        return IdUser;
    }

    public void setIdUser(int IdUser) {
        this.IdUser = IdUser;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getUserPassword() {
        return UserPassword;
    }

    public void setUserPassword(String UserPassword) {
        this.UserPassword = UserPassword;
    }

    public String getUserGmail() {
        return UserGmail;
    }

    public void setUserGmail(String UserGmail) {
        this.UserGmail = UserGmail;
    }

    public String getUserRole() {
        return UserRole;
    }

    public void setUserRole(String UserRole) {
        this.UserRole = UserRole;
    }

    @Override
    public String toString() {
        return "User{" + "IdUser=" + IdUser + ", UserName=" + UserName + ", UserPassword=" + UserPassword + ", UserGmail=" + UserGmail + ", UserRole=" + UserRole + '}';
    }
    
    
}
