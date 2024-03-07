# Generated by Selenium IDE
import pytest
import time
import json
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

class TestTester1():
  def setup_method(self, method):
    self.driver = webdriver.Chrome()
    self.vars = {}
  
  def teardown_method(self, method):
    self.driver.quit()
  
  def test_tester1(self):
    # Test name: tester1
    # Step # | name | target | value
    # 1 | open | https://rahulshettyacademy.com/angularpractice/ | 
    self.driver.get("https://rahulshettyacademy.com/angularpractice/")
    # 2 | setWindowSize | 987x797 | 
    self.driver.set_window_size(987, 797)
    # 3 | click | name=name | 
    self.driver.find_element(By.NAME, "name").click()
    # 4 | type | name=name | vilonia sari
    self.driver.find_element(By.NAME, "name").send_keys("vilonia sari")
    # 5 | type | name=email | viloniasarii@gmail.com
    self.driver.find_element(By.NAME, "email").send_keys("viloniasarii@gmail.com")
    # 6 | type | id=exampleInputPassword1 | hahahah
    self.driver.find_element(By.ID, "exampleInputPassword1").send_keys("hahahah")
    # 7 | click | id=exampleCheck1 | 
    self.driver.find_element(By.ID, "exampleCheck1").click()
    # 8 | click | id=exampleFormControlSelect1 | 
    self.driver.find_element(By.ID, "exampleFormControlSelect1").click()
    # 9 | select | id=exampleFormControlSelect1 | label=Female
    dropdown = self.driver.find_element(By.ID, "exampleFormControlSelect1")
    dropdown.find_element(By.XPATH, "//option[. = 'Female']").click()
    # 10 | click | id=inlineRadio2 | 
    self.driver.find_element(By.ID, "inlineRadio2").click()
    # 11 | click | name=bday | 
    self.driver.find_element(By.NAME, "bday").click()
    # 12 | type | name=bday | 0001-01-06
    self.driver.find_element(By.NAME, "bday").send_keys("0001-01-06")
    # 13 | type | name=bday | 0019-01-06
    self.driver.find_element(By.NAME, "bday").send_keys("0019-01-06")
    # 14 | type | name=bday | 0199-01-06
    self.driver.find_element(By.NAME, "bday").send_keys("0199-01-06")
    # 15 | type | name=bday | 1998-01-06
    self.driver.find_element(By.NAME, "bday").send_keys("1998-01-06")
    # 16 | click | css=.btn | 
    self.driver.find_element(By.CSS_SELECTOR, ".btn").click()
    # 17 | assertElementPresent | css=.ng-untouched | 
    elements = self.driver.find_elements(By.CSS_SELECTOR, ".ng-untouched")
    assert len(elements) > 0
    # 18 | assertText | css=strong | Success!
    assert self.driver.find_element(By.CSS_SELECTOR, "strong").text == "Success!"
    # 19 | close |  | 
    self.driver.close()
  