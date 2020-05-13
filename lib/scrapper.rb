class Scrapper
  def parsing_page
    url = 'https://www.imdb.com/chart/top/?ref_=nv_mv_250'
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page.body)
    parsed_page.css('td.titleColumn')
  end

  def hash_creator
    movies_with_places = []
    place_count = 0
    parsing_page.each do |movie_listing|
      movie = {
        title: movie_listing.css('a').text,
        place: place_count += 1
      }
      movies_with_places << movie
    end
    movies_with_places
  end
end
