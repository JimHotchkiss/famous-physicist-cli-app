class FamousPhysicistCliApp::Physicists

  attr_accessor :name, :famous_for, :birth, :death, :profile

  @@all = Array.new

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

  def self.born_before(year)
    #return all physicist objects that are born before whatever year is passed in
  end

  def self.born_after(year)

  end

end
