class FamousPhysicistCliApp::Physicists

  attr_accessor :name, :famous_for, :birth, :death, :profile

  @@all = Array.new

  #def self.new_from_index_page(html)
  def self.new_from_url
    FamousPhysicistCliApp::Scraper.new.profile_url.each_with_index do |url, i|
       if i == 5
         self.new(
         Nokogiri::HTML(open(url)).css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip,
         Nokogiri::HTML(open(url)).css('div.post-page-content').css('p').text,
         Nokogiri::HTML(open(url)).css('table.basicinfo').css('tbody').css('td').text
         )
          #html = Nokogiri::HTML(open(url))
        elsif i == 10
          self.new(
          Nokogiri::HTML(open(url)).css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip,
          Nokogiri::HTML(open(url)).css('div.post-page-content').css('p').text,
          Nokogiri::HTML(open(url)).css('div.basicinfo').css('td').text
          )
        elsif i == 13
          self.new(
          Nokogiri::HTML(open(url)).css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip,
          Nokogiri::HTML(open(url)).css('div.post-page-content').css('p').text,
          Nokogiri::HTML(open(url)).css('div.basicinfo').css('td').text
          )
        elsif i == 17
          self.new(
          Nokogiri::HTML(open(url)).css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip,
          Nokogiri::HTML(open(url)).css('div.post-page-content').css('p').text,
          Nokogiri::HTML(open(url)).css('div.basicinfo').css('td').text
          )
        else
          #html = Nokogiri::HTML(open(url))
          self.new(
          Nokogiri::HTML(open(url)).css('div.hfeed').css('h1').text.strip,
          Nokogiri::HTML(open(url)).css('div.entry').css('p').text,
          Nokogiri::HTML(open(url)).css('table.basicinfo').css('tr')[3].text.strip
          )
        end
      end
    end


    #self.new(
    #html.css('div.hfeed').css('h1').text.strip,
    #html.css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip, #THIS WORKS
    #html.css('table.basicinfo').css('tr')[3].text.strip, #famous_for
    #html.css('table.basicinfo').css('tr')[0].text.split(' ')[1..-1].join(' '), #birth
    #html.css('table.basicinfo').css('tr')[1].text.split(' ')[1..-1].join(' '), #death
    #html.css('div.entry').css('p').text #profile
    #)
  #end

  def initialize(name=nil, profile=nil, famous_for=nil)#, birth=nil, death=nil, profile=nil)
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
binding.pry
  end

  #def profile
  #  FamousPhysicistCliApp::Scraper.new.profile_url.each_with_index do |url, i|
  #    if i == 5 || 10 || 13 || 17
  #      html = Nokogiri::HTML(open(url))
  #      @name = html.css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip
  #      @profile = html.css('div.post-page-content').css('p').text
      #else
      #  html = Nokogiri::HTML(open(url))
      #  @name = html.css('div.hfeed').css('h1').text.strip
      #  @profile = html.css('div.entry').css('p').text
      #  binding.pry

  #    end
  #  end
  #end



end
