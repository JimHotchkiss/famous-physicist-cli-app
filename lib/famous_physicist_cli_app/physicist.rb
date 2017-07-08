#require 'pry'
class FamousPhysicistCliApp::Physicists

  attr_accessor :name, :famous_for, :profile, :accomplishments, :birth, :death

  @@all = Array.new

  def self.new_from_index_page(doc)
    self.new(
    doc.css('div.hfeed').css('h1').text.strip,
    doc.css('table.basicinfo').css('tr')[3].text.strip,
    )
  end

  def initialize(name=nil, famous_for=nil, url=nil)
    @name       = name
    @famous_for = famous_for
    @url        = url
    @@all.push(self)
  end


  def self.find(user_input)
    self.all[user_input-1]
    binding.pry 
  end

  def self.all
    @@all
  end

  def profile_url
    FamousPhysicistCliApp::Scraper.profile_url
binding.pry
  end

end
