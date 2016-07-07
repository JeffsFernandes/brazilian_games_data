puts 'play the beautiful game'
require 'selenium-webdriver'

def process_game
  # 'table tbody tr td font b'
end

def play
  data = []
  @driver = Selenium::WebDriver.for :firefox
  @driver.navigate.to 'http://localhost:8000/brazil2016.htm'
  game_tables = @driver.find_elements(:css, 'body > table')
  game_tables.each { |game| process_game(game) }
  @driver.quit
  return data
end

play