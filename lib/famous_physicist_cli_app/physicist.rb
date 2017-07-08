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

  def initialize(name='scientist', famous_for='great things', url=nil)
    @name       = name
    @famous_for = famous_for
    @url        = url
    @@all.push(self)
binding.pry
  end


  def find(input)
    FamousPhysicistCliApp::Scraper.collects_names[input-1]
  end

  def self.all
    @@all
  end

  def profile_url
    FamousPhysicistCliApp::Scraper.profile_url
binding.pry
  end

end
