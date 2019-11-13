using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Firefox;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TechTalk.SpecFlow;

namespace QuickDemo
{
    [Binding]
    public class GivenSteps
    {
        IWebDriver driver;

        public IWebDriver Driver { get => driver; set => driver = value; }


        [Given(@"User is at LogIn Page")]
        public void GivenUserAtLogInPage()
        {
            Driver = new ChromeDriver();
            Driver.Manage().Window.Maximize();
            Driver.Navigate().GoToUrl("https://www.website.com/ap/signin?");
        }
		
		[When(@" User enter (*) and (*)")]
		public void UserEnters(String username, String password)
        {
            Console.WriteLine("" + username);
            Console.WriteLine("" + password);
        }

    }


}