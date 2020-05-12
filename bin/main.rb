require 'nokogiri'
require 'httparty'
require 'byebug'
require_relative '../lib/validator.rb'
require_relative '../lib/search_engine.rb'

search_object = SearchEngine.new
byebug
search_object.place_search('The Shawshank Redemption')






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


