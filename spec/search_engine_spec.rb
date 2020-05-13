require 'nokogiri'
require 'httparty'
require_relative '../lib/search_engine.rb'

describe SearchEngine do
  let(:search_engine) {SearchEngine.new}

  context "#capitalize_words" do
    it "returns capitalized words" do
      expect(search_engine.capitalize_words('hello world')).to eql('Hello World')
    end
  end

  context "#title_search" do
    it "returns the title of the movie" do
      expect(search_engine.title_search(2)).to eql('The Godfather')
    end
  end
end
