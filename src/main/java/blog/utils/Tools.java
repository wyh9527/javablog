package blog.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Tools {
     public static String getNowTime(){
    	 Date currentTime = new Date();
    	 SimpleDateFormat time = new SimpleDateFormat("yyyy-MM-dd");
    	 String nowtime = time.format(currentTime);
		 return nowtime;
		}
}
