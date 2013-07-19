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
public class TagDB {
    DataProcess db = new DataProcess();
    
    public void addTag(Tag tName) throws SQLException{
        String[] sutunlar = {"tagid", "tagname"};
        String[] degerler = {"tagid", "tagname"};
        String tablo = "tag";
        db.kaydet(sutunlar, degerler, tablo);     
    }
    public void editTag(Tag newTag) throws SQLException{
        String[] sutunlar = {"tagid", "tagname"};
        String[] degerler = {"tagid", "tagname"};
        String tablo = "tag";
        db.duzenle();
    }
    public void deleteTag(int tagid) throws SQLException{
        db.sil();
    }
    public ArrayList<Tag> listTagIndex(){
        return null;
    }
}
