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
public class ProjectDB {

    DataProcess db = new DataProcess();

    public void addProject(Project pName) throws SQLException {
        String[] sutunlar={"projectid","projecttitle","projectcontent","projectdate","projectstartdate","projectfinishdate"};
        String[] degerler={"projectid","projecttitle","projectcontent","projectdate","projectstartdate","projectfinishdate"};
        String tablo = "project";
        db.kaydet(sutunlar,degerler,tablo);
        
    }
    public void deleteProject(Project pName) throws SQLException{
        db.sil();
    }
    public void editProject(Project pName) throws SQLException{
        db.duzenle();
    }
    public ArrayList<Project> listProject() {
        return null;
    }
}
