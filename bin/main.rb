require 'nokogiri'
require 'httparty'
require 'byebug'
require_relative '../lib/validator.rb'
require_relative '../lib/search_engine.rb'

search_engine = SearchEngine.new
validator = Validator.new

puts ''
puts '                            -----WELCOME------'
puts ''
puts 'Here you can find a film from TOP 250 IMBD ranking'
puts ''
puts 'You can do it either by TITLE or by PLACE in a ranking'

program_on = true
while program_on
  puts ''
  puts 'Choose ---1--- if you want to search by PLACE and ---2--- for searching by TITLE:  '

  search_type = gets.chomp

  until validator.search_type_validator(search_type)
    puts 'Please, choose ---1--- or ---2--- :  '
    search_type = gets.chomp
  end
  puts ''
  if validator.choice_validator(search_type)
    puts 'Please, type a place of movie in IMBD ranking: '
    place_of_choice = gets.chomp.to_i
    until validator.place_validator(place_of_choice)
      puts ''
      puts 'Please, choose from ---1--- to ---250--- :  '
      place_of_choice = gets.chomp.to_i
    end
    puts ''
    puts search_engine.title_search(place_of_choice)
  else
    puts 'Please, type a title of movie in IMBD ranking: '
    title_of_choice = gets.chomp
    while validator.empty_validator(title_of_choice)
      puts 'Please, type a title:  '
      title_of_choice = gets.chomp
    end
    title_of_choice = search_engine.capitalize_words(title_of_choice)
    puts ''
    puts search_engine.place_search(title_of_choice)

  end
  puts ''
  puts 'Do you want to continue? (Y/N): '
  yes_no = gets.chomp.downcase
  until validator.yes_no_validator(yes_no)
    puts 'Y/N?: '
    yes_no = gets.chomp.downcase
  end

  program_on = yes_no == 'y'
  system 'cls' if program_on
end
puts ''
puts 'Thank you for checking. '
puts ''
