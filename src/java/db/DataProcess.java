/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author s3f4
 */
public class DataProcess {

    private Connection baglanti = null;
    private PreparedStatement ifade = null;
    private Statement ifade2 = null;

    private int baglan() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            baglanti = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/isiniAnlat?useUnicode=true&characterEncoding=UTF-8", "root", "123456");
        } catch (ClassNotFoundException e) {
            return 0;
        }
        return 1;
    }

    private String soruIsaretiYazdir(String[] kayitlar) {
        String soruIsareti = "";
        for (int i = 0; i < kayitlar.length; i++) {
            if (i == 0 && kayitlar.length == 1) {
                soruIsareti += "?";
            } else if (i == 0 && kayitlar.length > 1) {
                soruIsareti += "?,";
            } else if (i != 0 && kayitlar.length > 1 && i != kayitlar.length - 1) {
                soruIsareti += "?,";
            } else if (i == kayitlar.length - 1) {
                soruIsareti += "?";
            }
        }
        System.out.println(soruIsareti);
        return soruIsareti;
    }

    private String kayitYazdir(String[] kayitlar) {
        String kayit = "";
        for (int i = 0; i < kayitlar.length; i++) {
            if (i == 0) {
                kayit += kayitlar[i];
            } else if (i > 0 && i != kayitlar.length - 1) {
                kayit += "," + kayitlar[i];
            } else if (i == kayitlar.length - 1) {
                kayit += "," + kayitlar[i];
            }
        }
        System.out.println(kayit);
        return kayit;
    }

    public int kaydet(String[] sutunlar, String[] degerler, String tablo) throws SQLException {
        baglan();
        try {
            ifade = baglanti.prepareStatement("insert into " + tablo + "(" + kayitYazdir(sutunlar) + ") values("
                    + soruIsaretiYazdir(sutunlar)
                    + ")");
            for (int i = 1; i <= degerler.length; i++) {
                ifade.setString(i, degerler[i - 1]);
            }
            ifade.executeUpdate();

        } catch (SQLException e) {
            return 0;
        }
        kapat();
        ifade.close();
        return 1;
    }

    public ArrayList<String> listele(String[] sutun, String tablo, String cumle) throws SQLException {
        baglan();
        ifade2 = baglanti.createStatement();
        ResultSet rs = ifade2.executeQuery("SELECT " + kayitYazdir(sutun) + " FROM " + tablo + "" + cumle);
        ArrayList<String> liste = new ArrayList<String>();
        while (rs.next()) {
            for (int i = 1; i <= sutun.length; i++) {
                liste.add(rs.getString(i));
            }
        }
        kapat();
        ifade2.close();
        return liste;
    }
    /**
     * Bu metot veritabanındaki verielri düzenlemeye yarar
     * returns zero
     */
    public int duzenle() throws SQLException {
        baglan();
        ifade2 = baglanti.createStatement();
        ifade2.executeUpdate("UPDATE Kisiler SET isim='SEFA SEYMA',soyisim='SAHIN'");
        kapat();
        ifade2.close();
        return 0;
    }

    public int sil() throws SQLException {
        baglan();
        ifade2 = baglanti.createStatement();
        ifade2.executeUpdate("DELETE FROM kisiler WHERE id=1");
        kapat();
        ifade2.close();
        return 0;
    }

    private int kapat() throws SQLException {
        baglanti.close();
        return 1;
    }

    public static void main(String[] args) {
       DataProcess dp = new DataProcess();
       
    }
}
