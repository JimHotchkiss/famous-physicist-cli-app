class FamousPhysicistCliApp::Physicists
  attr_accessor :name, :famous_for, :profile, :accomplishments

  @@all = Array.new

  #def self.create_from_index(r)
  #  self.new(
  #  self.create_from_index
  #  )
  #end


  def initialize(name=nil, famous_for=nil, profile=nil,accomplishments=nil)
    @name =            name
    @famous_for =      famous_for
    @profile =         profile
    @accomplishments = accomplishments
    @@all << self #this is pushing each instantiated obj into array
  end

  def find(input)
    self.physicists_array[input-1]
  end

  def all
    @@all
  end

end
