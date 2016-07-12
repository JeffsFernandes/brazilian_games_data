puts 'play the beautiful game'
require 'selenium-webdriver'

def process_game game_table
  save(build_game(game_table))
end

def save game
  #ToDo
end
def build_game game_table
  game = {}
  # raise game.inspect
  puts game_table.find_element(:css, 'tbody tr td font b').text
end

def play
  data = []
  @driver = Selenium::WebDriver.for :firefox
  @driver.navigate.to 'http://localhost:8000/brazil2016.htm'
  game_tables = @driver.find_elements(:css, 'body > table')
  game_tables.each { |game_table| process_game(game_table) }
  @driver.quit
  return data
end

play
