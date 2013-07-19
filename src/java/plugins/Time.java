/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package plugins;

import java.util.Date;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;

/**
 *
 * @author s3f4
 */
public class Time {
     public static String Now(){
	Date now = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy HH-MM-ss");	
	String strTime = sdf.format(now);
	System.out.println("Time: " + strTime);
        return strTime;
    }
}
