from selenium import webdriver
from selenium.webdriver.common.keys import Keys

# Path to the chromedriver executable
chromedriver_path = "/path/to/chromedriver"

# URL of the website you want to automate
website_url = "https://example.com"

# User credentials
username = "your_username"
password = "your_password"

# Initialize Chrome webdriver
driver = webdriver.Chrome(chromedriver_path)

# Open the website
driver.get(website_url)

# Find the username and password input fields and login button
username_field = driver.find_element_by_id("username")
password_field = driver.find_element_by_id("password")
login_button = driver.find_element_by_id("login_button")

# Enter username and password
username_field.send_keys(username)
password_field.send_keys(password)

# Click the login button
login_button.click()

# Close the browser window
driver.quit()
