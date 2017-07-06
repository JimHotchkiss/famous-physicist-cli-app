require 'pry'
class FamousPhysicistCliApp::CLI

  def call
    puts "

     ********** The 20 Most Famous Physicists! **********

         "

     list
     sleep(0.50)
     user_pick
     sleep(0.50)
     details
     sleep(0.50)
     another_pick
     sleep(0.5)
     finish

  end

  def list
    puts 'Names of physicist!'
  end

  def user_pick
    puts 'Pick a physicist'
    user_input = gets.strip.to_i
    # Here, I imagine iterating through list
    if user_input == 1
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
    end
  end

  def finish
    puts 'Thanks for visiting.'
  end


end
