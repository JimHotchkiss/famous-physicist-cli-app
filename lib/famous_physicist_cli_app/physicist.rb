class FamousPhysicistCliApp::Physicists
  attr_accessor :name, :famous_for, :profile, :accomplishments, :birth, :death

  @@all = Array.new

  def initialize(name=nil, famous_for=nil)
    @name =            
    @famous_for =      self.famous_for
    @@all << self #this is pushing each instantiated obj into array
  end

  
  def find(input)
    FamousPhysicistCliApp::Scraper.collects_names[input-1]
  end

  def all
    @@all
  end

end
