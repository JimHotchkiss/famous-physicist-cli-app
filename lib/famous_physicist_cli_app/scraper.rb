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

  def make_physicist
    var = get_page.css('table.toplist').css('a').attr('href')
    #This works.  This returns a link.  However, I need all of the links.  
  end

end
