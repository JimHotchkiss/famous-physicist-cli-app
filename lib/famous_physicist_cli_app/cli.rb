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
     sleep(0.50)

     physicists = FamousPhysicistCliApp::Scraper.new.find(user_input)
     puts "----------#{physicists}----------"

     puts ""
     puts 'Can you guess ' "#{physicists}" " nationality?"

     sleep(0.5)
     puts ""
     puts 'Would you like to know? Y/n.'
     user_input = gets.strip.downcase

     details

     sleep(0.50)
     another_pick
     sleep(0.5)
     finish

  end

  #def user_pick
    #puts 'Pick a physicist'
    #user_input = gets.strip.to_i
    # Here is where I need to call on the 'made' physicist
    #if user_input == 1
    # So if user types "1" they get all the details of that object
  #  new_physicist = FamousPhysicistCliApp::Physicists.new
    #binding.pry
    #  puts "Albert Einstein"
    #elsif user_input == 2
    #  puts "Niels Bohr"
    #else
    #  puts "Sorry, I didn't understand that."
      #user_pick
    #end
  #end

  def details
    puts 'Details'
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
