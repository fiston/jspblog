/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db.action;

import db.DataProcess;
import java.sql.SQLException;
import java.util.ArrayList;
import orm.*;
/**
 *
 * @author s3f4
 */
public class UserDB {
    
    DataProcess db = new DataProcess();
    
    public void addUser(User uName) throws SQLException{
        String[] sutunlar={"userid","username","usermail","userpassword","userfacebook","usertwitter"};
        String[] degerler={"userid","username","usermail","userpassword","userfacebook","usertwitter"};
        String tablo = "user";
        db.kaydet(sutunlar, degerler, tablo);
    }
    public void editUser(User newUser) throws SQLException{
        String[] sutunlar = {"tagid", "tagname"};
        String[] degerler = {"tagid", "tagname"};
        String tablo = "tag";
        db.duzenle();
    }
    public void deleteUser(int userid) throws SQLException{
        db.sil();
    }
    public User getUser(){
        return null;
    }
}
