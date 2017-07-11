class FamousPhysicistCliApp::Physicists

  attr_accessor :name, :famous_for, :birth, :death, :profile, :doc

  @@all = Array.new

  #def self.new_from_url
  #       self.new(
  #       doc.(open(url)).css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip, #name
#binding.pry
  #       doc(open(url)).css('div.post-page-content').css('p').text, #profile
  #       doc(open(url)).css('table.basicinfo').css('tr td')[3].text, #famous_for
  #       doc(open(url)).css('table.basicinfo').css('tr td')[0].text, #birth
  #       doc(open(url)).css('table.basicinfo').css('tr td')[1].text #death
  #       )
  #        self.new(
  #        @doc(open(url)).css('div.hfeed').css('h1').text.strip,
  #        @doc(open(url)).css('div.entry').css('p').text,
  #        @doc(open(url)).css('table.basicinfo').css('tr')[3].text.strip,
  #        @doc(open(url)).css('table.basicinfo').css('tr')[0].text.split(' ')[1..-1].join(' '),
  #        @doc(open(url)).css('table.basicinfo').css('tr')[1].text.split(' ')[1..-1].join(' ')
  #        )
  #      end
  #    end
  #  end

  def initialize(name=nil, profile=nil, famous_for=nil, birth=nil, death=nil)
    @name       = name
    @famous_for = famous_for
    @birth      = birth
    @death      = death
    @profile    = profile
    @@all.push(self)
  end

  def open_doc
    FamousPhysicistCliApp::Scraper.new.profile_url.each_with_index do |url, i|
      if i == 5
        @doc = Nokogiri::HTML(open(url))
binding.pry 
      elsif i == 10
        @doc = Nokogiri::HTML(open(url))
      elsif i == 13
        @doc = Nokogiri::HTML(open(url))
      elsif i == 17
        @doc = Nokogiri::HTML(open(url))
      else
        @doc = Nokogiri::HTML(open(url))
      end
    end
  end


  def self.find(user_input)
    self.all[user_input-1]
  end


  def self.all
    @@all
  end


end
