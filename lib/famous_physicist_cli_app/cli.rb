class FamousPhysicistCliApp::CLI

  def call
    FamousPhysicistCliApp::Scraper.new_from_url
    puts "

     ********** The 20 Most Famous Physicists! **********

         "
     prints_names



     puts ""
     puts 'Pick a physicist'
     user_input = gets.strip.to_i


     physicists = FamousPhysicistCliApp::Physicists.find(user_input)

     puts "*********************************************************************"
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

  def prints_names
    physicists = FamousPhysicistCliApp::Physicists.all
    physicists.each.with_index(1) do |each_physicists, i|
      puts "#{i}. #{each_physicists.name}"
      sleep(0.1)
    end
  end

  def another_pick
    puts 'Would you like another pick, Y/n?'
    user_input = gets.strip.downcase
    if user_input == 'y'
      FamousPhysicistCliApp::Physicists.clear_physicist
      
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
