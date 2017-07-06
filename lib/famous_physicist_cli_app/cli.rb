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
  end

  def details
    puts 'Details'
  end

  def another_pick
    puts 'Would you like another pick?'
  end

  def finish
    puts 'Thanks for visiting.'
  end


end
