using System;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.PageObjects;


public class BasePage
{
    IWebDriver driver;

	public BasePage(IWebDridriver _driver)
	{
        this.driver = _driver;
        PageFactory.InitElements(_driver,this);
	
	}
}
