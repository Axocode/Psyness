package org.axocode.dao;

import java.io.Serializable;

public class InterUsers implements Serializable{
    
    private int IUserNum;
    private String IUser;
    private int IAge;
    private String IEmail;
    private String IPassword;
    private int IImgNum;

    public int getIUserNum() {
        return IUserNum;
    }

    public void setIUserNum(int IUserNum) {
        this.IUserNum = IUserNum;
    }

    public String getIUser() {
        return IUser;
    }

    public void setIUser(String IUser) {
        this.IUser = IUser;
    }

    public int getIAge() {
        return IAge;
    }

    public void setIAge(int IAge) {
        this.IAge = IAge;
    }

    public String getIEmail() {
        return IEmail;
    }

    public void setIEmail(String IEmail) {
        this.IEmail = IEmail;
    }

    public String getIPassword() {
        return IPassword;
    }

    public void setIPassword(String IPassword) {
        this.IPassword = IPassword;
    }

    public int getIImgNum() {
        return IImgNum;
    }

    public void setIImgNum(int IImgNum) {
        this.IImgNum = IImgNum;
    }
    
    

}
