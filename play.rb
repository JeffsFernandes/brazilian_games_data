puts 'play the beautiful game'
require 'selenium-webdriver'

def play
  data = []
  @driver = Selenium::WebDriver.for :firefox
  @driver.navigate.to 'http://localhost:8000/brazil2016.htm'
  puts @driver.find_element(:css, 'table tbody tr td font b').text
  @driver.quit
  return data
end

play