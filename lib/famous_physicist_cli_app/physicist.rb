class FamousPhysicistCliApp::Physicists

  attr_accessor :name, :famous_for, :birth, :death, :profile

  @@all = Array.new

  def self.new_from_url
    FamousPhysicistCliApp::Scraper.new.profile_url.each_with_index do |url, i|
      doc = Nokogiri::HTML(open(url))
       if i == 5 || i == 10 || i == 13 || i == 17
         self.new(
         doc.css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip, #name
         doc.css('div.post-page-content').css('p').text, #profile
         doc.css('table.basicinfo').css('tr td')[3].text, #famous_for
         doc.css('table.basicinfo').css('tr td')[0].text, #birth
         doc.css('table.basicinfo').css('tr td')[1].text #death
         )
        else
          self.new(
          doc.css('div.hfeed').css('h1').text.strip,
          doc.css('div.entry').css('p').text,
          doc.css('table.basicinfo').css('tr')[3].text.strip,
          doc.css('table.basicinfo').css('tr')[0].text.split(' ')[1..-1].join(' '),
          doc.css('table.basicinfo').css('tr')[1].text.split(' ')[1..-1].join(' ')
          )
        end
      end
    end

  def initialize(name=nil, profile=nil, famous_for=nil, birth=nil, death=nil)
    @name       = name
    @famous_for = famous_for
    @birth      = birth
    @death      = death
    @profile    = profile
    @@all.push(self)
  end


  def self.find(user_input)
    self.all[user_input-1]
  end


  def self.all
    @@all
  end


end
