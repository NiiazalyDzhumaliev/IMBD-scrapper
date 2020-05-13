require 'nokogiri'
require 'httparty'
require_relative '../lib/scrapper.rb'

describe Scrapper do
  let(:scrapper) { Scrapper.new }
  context '#hash_creator' do
    it 'returns value of given key' do
      expect(scrapper.hash_creator[1][:title]).to eql('The Godfather')
    end
  end
end
