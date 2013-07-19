/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package orm;

import java.io.Serializable;

/**
 *
 * @author s3f4
 */
public class User implements Serializable{
    private int userId;
    private String userName;
    private String userMail;
    private String userFacebook;
    private String userTwitter;
    private String userTelNumber;
    private String userPassword;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserMail() {
        return userMail;
    }

    public void setUserMail(String userMail) {
        this.userMail = userMail;
    }

    public String getUserFacebook() {
        return userFacebook;
    }

    public void setUserFacebook(String userFacebook) {
        this.userFacebook = userFacebook;
    }

    public String getUserTwitter() {
        return userTwitter;
    }

    public void setUserTwitter(String userTwitter) {
        this.userTwitter = userTwitter;
    }

    public String getUserTelNumber() {
        return userTelNumber;
    }

    public void setUserTelNumber(String userTelNumber) {
        this.userTelNumber = userTelNumber;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public User(int userId, String userName, String userMail, String userFacebook, String userTwitter, String userTelNumber, String userPassword) {
        this.userId = userId;
        this.userName = userName;
        this.userMail = userMail;
        this.userFacebook = userFacebook;
        this.userTwitter = userTwitter;
        this.userTelNumber = userTelNumber;
        this.userPassword = userPassword;
    }
    
}
