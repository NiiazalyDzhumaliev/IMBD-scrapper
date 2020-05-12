require 'nokogiri'
require 'httparty'
require 'byebug'

class SearchEngine

  def parsing_page
    url = 'https://www.imdb.com/chart/top/?ref_=nv_mv_250'
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page.body)
    movie_listings = parsed_page.css('td.titleColumn')
  end  
# byebug
  def hash_creator
    movies_with_places = []
    place_count = 0    
    self.parsing_page.each do |movie_listing|
      movie = {
        title: movie_listing.css('a').text,
        place: place_count += 1
      }
      movies_with_places << movie
    end
    movies_with_places
  end  
end

new_object = SearchEngine.new
print new_object.hash_creator
