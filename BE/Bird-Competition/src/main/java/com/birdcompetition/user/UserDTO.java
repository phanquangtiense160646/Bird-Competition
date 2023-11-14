/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.user;

import java.io.Serializable;

/**
 *
 * @author admin
 */
public class UserDTO implements Serializable{

    private String name;
    private String password;
    private String gmail;
    private int role;
    private boolean status;

    public UserDTO() {
    }

    public UserDTO(String name, String password, String gmail, int role, boolean status) {
        this.name = name;
        this.password = password;
        this.gmail = gmail;
        this.role = role;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "UserDTO{" + "name=" + name + ", password=" + password + ", gmail=" + gmail + ", role=" + role + ", status=" + status + '}';
    }


  
}
