import java.util.concurrent.TimeUnit;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import junit.framework.TestCase;
import junit.framework.Assert;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.support.ui.Select;

import org.testng.annotations.AfterClass;

public class QATestIcare extends TestCase {

		public static WebDriver driver;
		private String baseUrl;
		private BufferedReader in = null;
		public String uName = "test";
		public String uPwd = "test";
		

		public void setUp() throws Exception {
			driver = new HtmlUnitDriver();
			baseUrl = "http://devopsicare-qa.ap-southeast-1.elasticbeanstalk.com/home.jsp?name=test";
			driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
			driver.manage().window().maximize();
		}

		@org.junit.Test
		public void test() throws InterruptedException {
			try {
				driver.get(baseUrl);
				System.out.println(baseUrl);
				
				driver.findElement(By.id("StripIconHeader0")).clear();
				driver.findElement(By.id("StripIconHeader1")).clear();
				//driver.findElement(By.id("StripIconHeader0")).sendKeys("Test");
				
				System.out.println("Selenium Test Passed for home page");
			} catch (org.openqa.selenium.NoSuchElementException e) {
				System.out.println("Selenium Test Failed for home page");
				System.out.println(e.getMessage());
				Assert.fail("Selenium Test Failed for home page   " + e.getMessage());
			}
		}

		@AfterClass
		public void tearDown() throws Exception {
			driver.quit();
		}

	}

