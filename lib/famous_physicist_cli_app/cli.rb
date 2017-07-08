class FamousPhysicistCliApp::CLI

  def call
    FamousPhysicistCliApp::Scraper.new.make_physicists
    #FamousPhysicistCliApp::Physicists.new_from_index_page(doc)

    puts "

     ********** The 20 Most Famous Physicists! **********

         "
     FamousPhysicistCliApp::Scraper.new.make_physicists
     FamousPhysicistCliApp::Scraper.new.prints_names
     #sleep(0.50)

     puts ""
     puts 'Pick a physicist'
     user_input = gets.strip.to_i
     #sleep(0.50)

     physicists = FamousPhysicistCliApp::Physicists.find(user_input)

     puts "*****************************************************************************************************************************************"
     puts "
          "
     puts "Physicists: #{physicists.name}"

     puts sprintf("#{physicists.famous_for}")
     puts ""
     sleep(0.5)

     puts "Would you like to learn more about #{physicists.name}? Y/n"
     user_input = gets.strip.downcase

     another_pick
  end

  def another_pick
    puts 'Would you like another pick, Y/n?'
    user_input = gets.strip.downcase
    if user_input == 'y'
      call
    elsif user_input == 'n'
      finish
    end
  end

  def finish
    puts 'Thanks for visiting.'
  end


end
