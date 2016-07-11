import java.util.concurrent.TimeUnit;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;

import junit.framework.TestCase;
import junit.framework.Assert;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.support.ui.Select;

import org.testng.annotations.AfterClass;

public class DevTest extends TestCase {

		public static WebDriver driver;
		private String baseUrl;
		private BufferedReader in = null;
		

		public void setUp() throws Exception {
			driver = new HtmlUnitDriver();
			baseUrl = "http://devopsicare-dev.ap-southeast-1.elasticbeanstalk.com/";
			driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
			driver.manage().window().maximize();
		}

		@org.junit.Test
		public void test() throws InterruptedException {
			UpcomingAppointments myUnit = new UpcomingAppointments();

	        String result = myUnit.getDateTimeDoctors("one");
	        assertEquals("one", result);
	        
	        System.out.println("Output here: " + assertEquals("one", result));
	        
		}

		@AfterClass
		public void tearDown() throws Exception {
			driver.quit();
		}

	}

