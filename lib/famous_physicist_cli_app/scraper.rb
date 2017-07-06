require 'pry'
class Scraper

  def get_page
    doc = Nokogiri::HTML(open("http://famousphysicists.org/"))
  end

end
