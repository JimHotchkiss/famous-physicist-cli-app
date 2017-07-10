class FamousPhysicistCliApp::CLI

  def call

    puts "

     ********** The 20 Most Famous Physicists! **********

         "
     #FamousPhysicistCliApp::Scraper.new.make_physicists
     FamousPhysicistCliApp::Scraper.new.prints_names

     FamousPhysicistCliApp::Physicists.new_from_url
     #FamousPhysicistCliApp::Scraper.new.make_physicists
     puts ""
     puts 'Pick a physicist'
     user_input = gets.strip.to_i


     physicists = FamousPhysicistCliApp::Physicists.find(user_input)

     puts "*****************************************************************************************************************************************"
     puts "
          "
     puts "Physicist: #{physicists.name}"

     puts "#{physicists.famous_for}"
     puts "
          "

     puts "Birth:   #{physicists.birth}"
     puts "Death:   #{physicists.death}"

     puts "
          "
     puts "Profile:

#{physicists.profile}"

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
