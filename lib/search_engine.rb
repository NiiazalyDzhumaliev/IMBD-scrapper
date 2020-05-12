require_relative '../lib/scrapper.rb'

class SearchEngine < Scrapper  
   def place_search(place)   
      result = String.new
      hash_creator.each do |item|
        result << item[:title] if item[:place] == place
      end
      result
   end
end

object1 = SearchEngine.new
puts object1.place_search(1)
# hash_creator[0][:place] == 1 => hash_creator[0][:title]
