/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.birdcompetition.dal;

import java.io.Serializable;

/**
 *
 * @author 84366
 */
public class RegistrationCreateError implements Serializable{
    private String usernameLengthErr;
    private String passwordLengthErr;
    private String gmailLengthErr;
    private String confirmLengthErr;
    private String usernameIsExisted;

    public RegistrationCreateError() {
    }

    /**
     * @return the usernameLengthErr
     */
    public String getUsernameLengthErr() {
        return usernameLengthErr;
    }

    /**
     * @param usernameLengthErr the usernameLengthErr to set
     */
    public void setUsernameLengthErr(String usernameLengthErr) {
        this.usernameLengthErr = usernameLengthErr;
    }

    /**
     * @return the passwordLengthErr
     */
    public String getPasswordLengthErr() {
        return passwordLengthErr;
    }

    /**
     * @param passwordLengthErr the passwordLengthErr to set
     */
    public void setPasswordLengthErr(String passwordLengthErr) {
        this.passwordLengthErr = passwordLengthErr;
    }

    /**
     * @return the fullNameLengthErr
     */
    public String getGmailLengthErr() {
        return gmailLengthErr;
    }

    /**
     * @param fullNameLengthErr the fullNameLengthErr to set
     */
    public void setGmailLengthErr(String fullNameLengthErr) {
        this.gmailLengthErr = fullNameLengthErr;
    }

    /**
     * @return the confirmLengthErr
     */
    public String getConfirmLengthErr() {
        return confirmLengthErr;
    }

    /**
     * @param confirmLengthErr the confirmLengthErr to set
     */
    public void setConfirmLengthErr(String confirmLengthErr) {
        this.confirmLengthErr = confirmLengthErr;
    }

    /**
     * @return the usernameIsExisted
     */
    public String getUsernameIsExisted() {
        return usernameIsExisted;
    }

    /**
     * @param usernameIsExisted the usernameIsExisted to set
     */
    public void setUsernameIsExisted(String usernameIsExisted) {
        this.usernameIsExisted = usernameIsExisted;
    }
    
    
    
    
}
