class FamousPhysicistCliApp::Physicists

  attr_accessor :name, :famous_for, :profile, :accomplishments, :birth, :death

  @@all = Array.new

  def initialize(name=nil, famous_for=nil)
    @name =       name
    @famous_for = famous_for
  end


  def find(input)
    FamousPhysicistCliApp::Scraper.collects_names[input-1]
  end

  def self.all
    @@all
  end

  def profile_url
    x = FamousPhysicistCliApp::Scraper.profile_url
binding.pry 
  end

end
