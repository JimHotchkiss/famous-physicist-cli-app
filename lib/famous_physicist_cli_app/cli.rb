require 'pry'
class CLI

  def call
    doc = Scraper.new.get_page
    doc.css('div.tile').css('span').each do |element|
      nationality = element.text
      if nationality.include?("American")
        puts "#{element.text}"
      end
binding.pry
    end
    puts "********** Welcome to Famous Physicists! **********"
    sleep(1.5)
    puts "What country would you like"
    user_input = gets.strip
  end

end
