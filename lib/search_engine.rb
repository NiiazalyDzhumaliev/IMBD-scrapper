require 'nokogiri'
require 'httparty'
require 'byebug'

class SearchEngine
  def initialize 
    @movie_listings = Array.new
    @movies_with_places = Array.new
  end

  def self.parsing_page
    url = "https://www.imdb.com/chart/top/?ref_=nv_mv_250"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page.body)
    @movie_listings = parsed_page.css('td.titleColumn')     
  end  
  
  

  
  byebug
  
  


end



