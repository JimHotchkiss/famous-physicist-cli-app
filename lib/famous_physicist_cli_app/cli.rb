class FamousPhysicistCliApp::CLI

  def call

    puts "

     ********** The 20 Most Famous Physicists! **********

         "
     prints_names

     FamousPhysicistCliApp::Physicists.new_from_url

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
    count = 0
    FamousPhysicistCliApp::Scraper.new.collects_names.each do |each_physicists|
      puts "#{count+=1}. #{each_physicists}"
      sleep(0.1)
    end
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
