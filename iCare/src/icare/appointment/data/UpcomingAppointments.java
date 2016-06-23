package icare.appointment.data;
import java.io.*;
import java.util.*;
import java.text.*;

/**
 * implementation class UpcomingAppointments
 */
public class UpcomingAppointments {
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public static String[][] getDateTimeDoctors(String clinicName) {
		
		//	Get the date after 1 day
		Date dNow = new Date();
		Calendar cal = Calendar.getInstance();
		cal.setTime(dNow);
		cal.add(Calendar.DATE, 1); // add 2 days
		dNow = cal.getTime();
		
		//SimpleDateFormat ft = new SimpleDateFormat ("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
		SimpleDateFormat ft1 = new SimpleDateFormat ("MMM - YYYY");
		SimpleDateFormat ft2 = new SimpleDateFormat ("d");
		SimpleDateFormat ft3 = new SimpleDateFormat ("EEEE");

		
		String[][] aryNumbers = new String[4][7];
		
		//	Row 1
		aryNumbers[0][0] = ft1.format(dNow);
		aryNumbers[0][1] = ft2.format(dNow);
		aryNumbers[0][2] = ft3.format(dNow);
		aryNumbers[0][3] = "Dr.Jonathan";
		aryNumbers[0][4] = "Dermatology";
		aryNumbers[0][5] = "10:00 am - 10:30 am";
		aryNumbers[0][6] = clinicName;
		
		
		//	Row 2
		cal.setTime(dNow);
		cal.add(Calendar.DATE, 2); // add 2 days
		dNow = cal.getTime();
		
		SimpleDateFormat ft4 = new SimpleDateFormat ("MMM - YYYY");
		SimpleDateFormat ft5 = new SimpleDateFormat ("d");
		SimpleDateFormat ft6 = new SimpleDateFormat ("EEEE");
		
		aryNumbers[1][0] = ft4.format(dNow);
		aryNumbers[1][1] = ft5.format(dNow);
		aryNumbers[1][2] = ft6.format(dNow);
		aryNumbers[1][3] = "Dr.Krisha";
		aryNumbers[1][4] = "Cardiology";
		aryNumbers[1][5] = "10:00 am - 10:30 am";
		aryNumbers[1][6] = "at Clinic 12";
		
		//	Row 3
		cal.setTime(dNow);
		cal.add(Calendar.DATE, 4); // add 2 days
		dNow = cal.getTime();
		
		SimpleDateFormat ft7 = new SimpleDateFormat ("MMM - YYYY");
		SimpleDateFormat ft8 = new SimpleDateFormat ("d");
		SimpleDateFormat ft9 = new SimpleDateFormat ("EEEE");
		
		aryNumbers[2][0] = ft7.format(dNow);
		aryNumbers[2][1] = ft8.format(dNow);
		aryNumbers[2][2] = ft9.format(dNow);
		aryNumbers[2][3] = "Dr.Krisha";
		aryNumbers[2][4] = "Cardiology";
		aryNumbers[2][5] = "10:00 am - 10:30 am";
		aryNumbers[2][6] = "at Clinic 12";
		
		//	Row 4
		cal.setTime(dNow);
		cal.add(Calendar.DATE, 6); // add 2 days
		dNow = cal.getTime();
		
		SimpleDateFormat ft11 = new SimpleDateFormat ("MMM - YYYY");
		SimpleDateFormat ft22 = new SimpleDateFormat ("d");
		SimpleDateFormat ft33 = new SimpleDateFormat ("EEEE");
		
		aryNumbers[3][0] = ft11.format(dNow);
		aryNumbers[3][1] = ft22.format(dNow);
		aryNumbers[3][2] = ft33.format(dNow);
		aryNumbers[3][3] = "Dr.Jonathan";
		aryNumbers[3][4] = "Dermatology";
		aryNumbers[3][5] = "10:00 am - 10:30 am";
		aryNumbers[3][6] = "at Clinic 10";
		
		return aryNumbers;
	}

}
