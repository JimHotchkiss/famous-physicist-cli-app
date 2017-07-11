class FamousPhysicistCliApp::Physicists

  attr_accessor :name, :famous_for, :birth, :death, :profile

  @@all = Array.new

  def self.new_from_url
    FamousPhysicistCliApp::Scraper.new.profile_url.each_with_index do |url, i|
       if i == 5
         self.new(
         Nokogiri::HTML(open(url)).css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip, #name
         Nokogiri::HTML(open(url)).css('div.post-page-content').css('p').text, #profile
         Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr td')[3].text, #famous_for
         Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr td')[0].text, #birth
         Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr td')[1].text #death
         )
        elsif i == 10
          self.new(
          Nokogiri::HTML(open(url)).css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip,
          Nokogiri::HTML(open(url)).css('div.post-page-content').css('p').text,
          Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr td')[3].text,
          Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr td')[0].text,
          Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr td')[1].text
          )
        elsif i == 13
          self.new(
          Nokogiri::HTML(open(url)).css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip,
          Nokogiri::HTML(open(url)).css('div.post-page-content').css('p').text,
          Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr td')[3].text,
          Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr td')[0].text,
          Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr td')[1].text
          )
        elsif i == 17
          self.new(
          Nokogiri::HTML(open(url)).css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip,
          Nokogiri::HTML(open(url)).css('div.post-page-content').css('p').text,
          Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr td')[1].text,
          Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr td')[0].text,
          Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr td')[1].text
          )
        else
          self.new(
          Nokogiri::HTML(open(url)).css('div.hfeed').css('h1').text.strip,
          Nokogiri::HTML(open(url)).css('div.entry').css('p').text,
          Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr')[3].text.strip,
          Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr')[0].text.split(' ')[1..-1].join(' '),
          Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr')[1].text.split(' ')[1..-1].join(' ')
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
