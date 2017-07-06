require 'pry'
class CLI

  def call

    count = 0

    puts "********** Welcome to Famous Physicists! **********"
    sleep(1.5)
    puts "What country would you like"
    user_input = gets.strip

    Scraper.new.get_page.list_names

end
