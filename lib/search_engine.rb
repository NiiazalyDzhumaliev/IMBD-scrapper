require_relative '../lib/scrapper.rb'

class SearchEngine < Scrapper
  def capitalize_words(words)
    words.split.map(&:capitalize).join(' ')
  end

  def title_search(place)
    result = ''
    hash_creator.each do |item|
      result = item[:title] if item[:place] == place
    end
    result
  end

  def place_search(movie)
    result = ''
    hash_creator.each do |item|
      item[:title] = capitalize_words(item[:title])
      result = item[:place] if item[:title] == movie
    end
    result
  end
end

object1 = SearchEngine.new
puts object1.place_search('The Shawshank Redemption')
# hash_creator[0][:place] == 1 => hash_creator[0][:title]
