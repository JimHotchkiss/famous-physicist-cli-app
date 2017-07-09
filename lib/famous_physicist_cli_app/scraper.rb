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

  def prints_names
    count = 0
    collects_names.each do |each_physicists|
    puts "#{count+=1}. #{each_physicists}"
    sleep(0.1)
    end
  end

  def profile_url
    url_array = Array.new

    get_page.css('table.toplist').css('a').each do |phys|
      #binding.pry
    profile_url = phys.attr('href')
    url_array.push(profile_url)
    end
    url_array
  end

  def make_physicists
    profile_url.each_with_index do |url, i|
      if i == 5
        html_i = Nokogiri::HTML(open(url))
        FamousPhysicistCliApp::Physicists.new_from_index_page(html_i)
        name = html_i.css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip #name
        bio = html_i.css('div.post-page-content').css('p').text

        binding.pry
      elsif i == 10
        html_i = Nokogiri::HTML(open(url))
        FamousPhysicistCliApp::Physicists.new_from_index_page(html_i)
      elsif i == 13
        html_i = Nokogiri::HTML(open(url))
        FamousPhysicistCliApp::Physicists.new_from_index_page(html_i)
      elsif i == 17
        html_i = Nokogiri::HTML(open(url))
        FamousPhysicistCliApp::Physicists.new_from_index_page(html_i)
      else
        html = Nokogiri::HTML(open(url))
        FamousPhysicistCliApp::Physicists.new_from_index_page(html)
      end
    end
  end

end
