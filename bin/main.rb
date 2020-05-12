require 'nokogiri'
require 'httparty'
require 'byebug'

# puts '                                     -----WELCOME------'
# puts 'Here you can find a film from TOP 250 IMBD ranking'
# puts ''
# puts 'You can find it by TITLE or by PLACE in a ranking'
# puts ''
# print 'Choose 1 if you want search by TITLE and 2 for searching by PLACE:'
# search_type = gets.chomp

# def empty_validator(title)
#   title == "" ? true : false
# end

# while empty_validator(search_type)
#   puts 'Please, enter the valid command'
#   search_type = gets.chomp
# end

def scraper
  url = 'https://www.imdb.com/chart/top/?ref_=nv_mv_250'
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page.body)
  jobs = []
  job_listings = parsed_page.css('td.titleColumn')
  count = 0
  job_listings.each do |job_listings|
    job = {
      title: job_listings.css('a').text,
      place: count += 1
    }
    jobs << job
  end
  byebug
end

scraper
