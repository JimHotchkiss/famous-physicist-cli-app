require 'pry'
class CLI

  def call
    physicists_array = Array.new
    doc = Scraper.new.get_page
    doc_focus = doc.css('div.tile')
binding.pry
    doc.css('div.tile').css('span').each do |element|
      nationality = element.text
      if nationality.include?("American")
        physicists_array.push(element.text) #This works  but I want scientist
        physicists_array.each do |nation|
          puts "#{nation}"
        end
      elsif nationality.include?("British")
        physicists_array.push(element.text)
#Try pushing the sorted physicists into an array and return the array
      end
#binding.pry
    end
    puts "********** Welcome to Famous Physicists! **********"
    sleep(1.5)
    puts "What country would you like"
    user_input = gets.strip
  end

end
