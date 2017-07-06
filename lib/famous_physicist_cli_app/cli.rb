require 'pry'
class FamousPhysicistCliApp::CLI

  def call
    puts "

     ********** The 20 Most Famous Physicists! **********

         "

     list_names
     sleep(0.50)
     user_pick
     sleep(0.50)
     FamousPhysicistCliApp::Scraper.new.name
     details
     sleep(0.50)
     another_pick
     sleep(0.5)
     finish

  end

  def list_names
    FamousPhysicistCliApp::Scraper.new.list_names
  end

  def user_pick
    puts 'Pick a physicist'
    user_input = gets.strip.to_i
    # Here is where I need to call on the 'made' physicist
    if user_input == 1
    # So if user types "1" they get all the details of that object
    new_physicist = FamousPhysicistCliApp::Physicists.new
      puts "Albert Einstein"
    elsif user_input == 2
      puts "Niels Bohr"
    else
      puts "Sorry, I didn't understand that."
      user_pick
    end
  end

  def details
    puts 'Details'
  end

  def another_pick
    puts 'Would you like another pick, Y/n?'
    user_input = gets.strip.downcase
    if user_input == 'y'
      call
    else
      finish
    end
  end

  def finish
    puts 'Thanks for visiting.'
  end


end
