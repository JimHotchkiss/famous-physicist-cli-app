class FamousPhysicistCliApp::CLI

  def call

    FamousPhysicistCliApp::Scraper.new.make_physicists
    puts "

     ********** The 20 Most Famous Physicists! **********

         "
     FamousPhysicistCliApp::Scraper.new.make_physicists
     FamousPhysicistCliApp::Scraper.new.prints_names


     puts ""
     puts 'Pick a physicist'
     user_input = gets.strip.to_i


     physicists = FamousPhysicistCliApp::Physicists.find(user_input)

     puts "*****************************************************************************************************************************************"
     puts "
          "
     puts "PHYSICISTS: #{physicists.name}"

     puts "KNOWN FOR: #{physicists.famous_for}"
     puts "
          "

     puts "Birth: #{physicists.birth}"
     puts "Death: #{physicists.death}"

     puts "
          "
     puts "Profile: #{physicists.profile}"

     another_pick
  end

  def another_pick
    puts 'Would you like another pick, Y/n?'
    user_input = gets.strip.downcase
    if user_input == 'y'
      call
    elsif user_input == 'n'
      finish
    else
      another_pick
    end
  end

  def finish
    puts 'Thanks for visiting.'
  end

end
