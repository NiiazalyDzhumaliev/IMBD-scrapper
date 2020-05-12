require 'nokogiri'
require 'httparty'
require 'byebug'
require_relative '../lib/validator.rb'
require_relative '../lib/search_engine.rb'

search_engine = SearchEngine.new
validator = Validator.new


puts '                            -----WELCOME------'
puts 'Here you can find a film from TOP 250 IMBD ranking'
puts ''
puts 'You can do it either by TITLE or by PLACE in a ranking'
puts ''
print 'Choose ---1--- if you want to search by PLACE and ---2--- for searching by TITLE:  '

search_type = gets.chomp

until validator.search_type_validator(search_type)
    print 'Please, choose ---1--- or ---2--- :  '
    search_type = gets.chomp
end

if validator.choice_validator(search_type)
  print 'Please, type a place of movie in IMBD ranking: '
  place_of_choice = gets.chomp.to_i  
  puts search_engine.title_search(place_of_choice)
else
  print 'Please, type a title of movie in IMBD ranking: '
  title_of_choice = gets.chomp
  title_of_choice = search_engine.capitalize_words(title_of_choice)
  puts search_engine.place_search(title_of_choice)
end





