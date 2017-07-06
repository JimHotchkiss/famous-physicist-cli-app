require 'pry'
class CLI

  def call

    puts "

     ********** The 20 Most Famous Physicists! **********"
    sleep(1.5)

    new = Scraper.new
    binding.pry

  end

end
