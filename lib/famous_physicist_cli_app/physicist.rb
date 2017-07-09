class FamousPhysicistCliApp::Physicists

  attr_accessor :name, :famous_for, :birth, :death, :profile

  @@all = Array.new

  def self.new_from_index_page(html)
    self.new(
    html.css('div.hfeed').css('h1').text.strip,
    #html.css('div.page-wrapper').css('div#content').css('h2').css('.post-title').text.strip, #THIS WORKS
    html.css('table.basicinfo').css('tr')[3].text.strip, #famous_for
    html.css('table.basicinfo').css('tr')[0].text.split(' ')[1..-1].join(' '), #birth
    html.css('table.basicinfo').css('tr')[1].text.split(' ')[1..-1].join(' '), #death
    html.css('div.entry').css('p').text #profile
    )
  end

  def initialize(name=nil, famous_for=nil, birth=nil, death=nil, profile=nil)
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

  def profile
    @doc.each_with_index do |url, i|
      if i == 5 || 10 || 13 || 17
        html = Nokogiri::HTML(open(url))
        @profile = html.css('div.post-page-content').css('p').text
      else
        html = Nokogiri::HTML(open(url))
        @profile = css('div.entry').css('p').text
        binding.pry
      end
    end
  end

   def doc
     @doc = FamousPhysicistCliApp::Scraper.new.get_page.css('table.toplist').css('a')
     binding.pry
   end

end
