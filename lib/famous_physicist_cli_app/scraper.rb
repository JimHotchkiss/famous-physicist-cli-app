require 'pry'
class Scraper

  def get_page
    doc = Nokogiri::HTML(open("http://famousphysicists.org/"))
  end

  def list_names

    count = 0
    physicists_array = Array.new

    names.each_with_index do |name|
    physicists_array.push(name.text)
    end


    physicists_array.each do |each_physicists|
    puts "#{count+=1}. #{each_physicists}"
    sleep(0.25)
    end

  end

end
