class FamousPhysicistCliApp::Physicists

  attr_accessor :name, :famous_for, :birth, :death, :profile

  @@all = Array.new

  def self.new_from_index_page(doc)
    self.new(
    doc.css('div.hfeed').css('h1').text.strip, #name
    doc.css('table.basicinfo').css('tr')[3].text.strip, #famous_for
    doc.css('table.basicinfo').css('tr')[0].text.split(' ')[1..-1].join(' '), #birth
    doc.css('table.basicinfo').css('tr')[1].text.split(' ')[1..-1].join(' '), #death
    doc.css('div.entry').css('p').text #profile
    )
  end

  def initialize(name=nil, famous_for=nil, birth=nil, death="nil", profile=nil)
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
