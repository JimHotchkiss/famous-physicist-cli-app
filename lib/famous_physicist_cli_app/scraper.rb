require 'pry'
class Scraper

  def get_page
    doc = Nokogiri::HTML(open("http://www.thefamouspeople.com/physicists.php"))
  end

  def scrape_page_index
    self.get_page.css("div.btn btn-primary btn-sm btn-block btn-block-margin").each do |index|
      physicists_name = index.text
      binding.pry
    end
  end

end
