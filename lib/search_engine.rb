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
    result == '' ? 'I can not find the movie.' : result
  end
end
