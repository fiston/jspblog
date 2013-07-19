/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db.action;

import db.DataProcess;
import java.sql.SQLException;
import java.util.ArrayList;
import orm.Thread;

/**
 *
 * @author s3f4
 */
public class ThreadDB {

    DataProcess db = new DataProcess();

    public void addThread(Thread tName) throws SQLException {
        String[] sutunlar = {"threadtitle", "threadcontent", "threaddate"};
        String[] degerler = {tName.getThreadTİtle(), tName.getThreadContent(), tName.getThreadDate()};
        String tablo = "thread";
        if(db.kaydet(sutunlar, degerler, tablo) > 0)
            System.out.println("Kaydedildi");
        else
            System.out.println("Kaydedilmedi");
    }

    public void editThread(Thread newThread) throws SQLException {
        String[] sutunlar = {"threadid", "threadtitle", "threadcontent", "threaddate"};
        String[] degerler = {"threadid", "threadtitle", "threadcontent", "threaddate"};
        String tablo = "thread";
        db.duzenle();
    }

    public void deleteThread(int threadid) throws SQLException {
        db.sil();
    }

    public ArrayList<Thread> listThreadIndex() {
        return null;
    }
}
