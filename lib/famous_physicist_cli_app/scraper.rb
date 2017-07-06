require 'pry'

class FamousPhysicistCliApp::Scraper

  def get_page
    Nokogiri::HTML(open("http://famousphysicists.org/"))
  end

  def list_names
    count = 0

    physicists_array = Array.new
    names = get_page.css('a').css('strong') #this returns an array of names

    names.each_with_index do |name|
    physicists_array.push(name.text)
    end

    physicists_array.each do |each_physicists|
    puts "#{count+=1}. #{each_physicists}"
    sleep(0.25)
    end
  end

  def profile_url 
    array = Array.new

    get_page.css('table.toplist').css('a').each do |link|
    profile_url = link.attr('href')
    array.push(profile_url)
    end
    array
binding.pry 
  end

end
