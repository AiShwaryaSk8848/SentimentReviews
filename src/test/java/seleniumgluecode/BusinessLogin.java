package seleniumgluecode;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.en.And;
import io.cucumber.java.en.But;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;

public class BusinessLogin {
	public static WebDriver driver;
	@Given("^Open website$")
	public void openPage() {
		System.setProperty("webdriver.http.factory", "jdk-http-client");
		WebDriverManager.chromedriver().setup();
		driver = new ChromeDriver();
			driver.get("https://www.sentiment-reviews.com/#aboutus");
	}
	@When("^Click Business login button$")
	public void loginBUtton() {
		driver.findElement(By.xpath("//*[@id=\"banner\"]/div/div/div[1]/div/a")).click();
	}
	@SuppressWarnings("deprecation")              //Cannot add name only one character can be typed in. Also it only takes numbers as input
	@And("^Add Name \"([^\"]*)\"$")
	public void validUsername(String an){
		//driver.switchTo().alert();
		driver.manage().timeouts().implicitlyWait(50, TimeUnit.SECONDS);
		driver.findElement(By.id("loan_amount")).sendKeys(an);
	}
	@SuppressWarnings("deprecation")
	@And("^Add phone number \"([^\"]*)\"$")
	public void validPhoneNumber(String ab) {
		driver.manage().timeouts().implicitlyWait(50, TimeUnit.SECONDS);
		driver.findElement(By.id("loan_how_long_for")).sendKeys(ab);
	}
	
	@And("^Add full name \"([^\"]*)\"$")
	public void validFullname(String ad) {
		driver.findElement(By.id("loan_full_name")).sendKeys(ad);
	}

	@And("^Add valid email address \"([^\"]*)\"$")
	public void validEmailaddress(String ae) {
		driver.findElement(By.id("loan_email_address")).sendKeys(ae);
	
	}
	@SuppressWarnings("deprecation")
	@Then("^Click Login$")
	public void clickLogin() {
		driver.manage().timeouts().implicitlyWait(50, TimeUnit.SECONDS);
		driver.findElement(By.xpath("//*[@id=\"applyLoan\"]/div/div/div[2]/form/div/div[6]/button")).click();
		
	}
	
	@But("^Close browser$")
	public void closeBrowser() {
		driver.quit();
	}
}


