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
    url_array = Array.new

    get_page.css('table.toplist').css('a').each do |link|
    profile_url = link.attr('href')
    url_array.push(profile_url)
    end
    url_array
  end

  def name
    profile_url.each do |profile|
      doc = Nokogiri::HTML(open(profile))
      name = doc.css('div.hfeed').css('h1').text.strip
      birth_heading = doc.css('table.basicinfo').css('tr')[0].text
      birth = birth_heading.split(' ')[1..-1].join(' ')
      died_heading = doc.css('table.basicinfo').css('tr')[1].text
      died = died_heading.split(' ')[1..-1].join(' ')
      nationality_heading = doc.css('table.basicinfo').css('tr')[2].text
      nationality = nationality_heading.split(' ')[1..-1].join(' ')
      famous_for = doc.css('table.basicinfo').css('tr')[3].text.strip

#when I puts this out "...was #{birth}" this way it will start with 'born'
binding.pry
    end
  end

end
