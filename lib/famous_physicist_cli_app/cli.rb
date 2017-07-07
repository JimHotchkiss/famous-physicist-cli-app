require 'pry'
class FamousPhysicistCliApp::CLI

  def call
    puts "

     ********** The 20 Most Famous Physicists! **********

         "


     FamousPhysicistCliApp::Scraper.new.prints_names
     sleep(0.50)

     puts ""
     puts 'Pick a physicist'
     user_input = gets.strip.to_i
     #sleep(0.50)


     physicists = FamousPhysicistCliApp::Scraper.new.find(user_input)
     page_profile = FamousPhysicistCliApp::Scraper.new.find_profile_page(user_input)

     puts "         Physicists:    #{physicists}"

     puts "         Profile Page:  #{page_profile}"
     puts ""
     sleep(0.5)

     puts "Would you like to learn more about #{physicists}? Y/n"
     user_input = gets.strip.downcase

     bio = 

     #details

     sleep(0.50)
     another_pick
     sleep(0.5)
     finish

  end


  def details
    FamousPhysicistCliApp::Scraper.new.create_from_index.each do |profile_page|
      puts "#{profile_page}"
    end
#binding.pry

  end

  def another_pick
    puts 'Would you like another pick, Y/n?'
    user_input = gets.strip.downcase
    if user_input == 'y'
      call
    elsif user_input == 'n'
    end
  end

  def finish
    puts 'Thanks for visiting.'
  end


end
