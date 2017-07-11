class FamousPhysicistCliApp::Scraper

  def get_page
    Nokogiri::HTML(open("http://famousphysicists.org/"))
  end

  def collects_names
    physicists_array = Array.new
    names = get_page.css('a').css('strong') #this returns an array of names
    names.each_with_index do |name|
    physicists_array.push(name.text)
    end
    physicists_array
  end

    #def prints_names
  #   count = 0
  #  collects_names.each do |each_physicists|
  #  puts "#{count+=1}. #{each_physicists}"
  #  sleep(0.1)
  #  end
  #end

  def profile_url
    url_array = Array.new

    get_page.css('table.toplist').css('a').each do |phys|
    profile_url = phys.attr('href')
    url_array.push(profile_url)
    end
    url_array
  end

end
