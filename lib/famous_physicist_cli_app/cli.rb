require 'pry'
class CLI

  def call

    puts "********** Welcome to Famous Physicists! **********"
    sleep(1.5)
    puts "What country would you like"
    user_input = gets.strip

    physicists_array = Array.new
    names = Scraper.new.get_page.css('a').css('strong') #this returns an array of names


    names.each do |name|
      physicists_array.push(name.text)
    end
    physicists_array # This returns an array of the physicists!!!!
binding.pry
  end

end
