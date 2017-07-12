class FamousPhysicistCliApp::Scraper

  def get_page
    Nokogiri::HTML(open("http://famousphysicists.org/"))
  end

  def self.new_from_url
    self.new.profile_url.each_with_index do |url, i|
      doc = Nokogiri::HTML(open(url))
       if i == 5 || i == 10 || i == 13 || i == 17
         FamousPhysicistCliApp::Physicists.new(
         doc.css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip, #name
         doc.css('div.post-page-content').css('p').text, #profile
         doc.css('table.basicinfo').css('tr td')[3].text, #famous_for
         doc.css('table.basicinfo').css('tr td')[0].text, #birth
         doc.css('table.basicinfo').css('tr td')[1].text #death
         )
        else
          FamousPhysicistCliApp::Physicists.new(
          doc.css('div.hfeed').css('h1').text.strip,
          doc.css('div.entry').css('p').text,
          doc.css('table.basicinfo').css('tr')[3].text.strip,
          doc.css('table.basicinfo').css('tr')[0].text.split(' ')[1..-1].join(' '),
          doc.css('table.basicinfo').css('tr')[1].text.split(' ')[1..-1].join(' ')
          )
        end
      end
    end

  def profile_url
    url_array = Array.new

    get_page.css('table.toplist').css('a').each do |phys|
    profile_url = phys.attr('href')
    url_array.push(profile_url)
    end
    url_array
  end

end
