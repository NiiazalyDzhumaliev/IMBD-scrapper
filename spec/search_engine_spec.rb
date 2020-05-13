require_relative '../lib/search_engine.rb'

describe SearchEngine do
  let(:search_engine) {SearchEngine.new}

  context "#capitalize_words" do
    it "returns capitalized words" do
      expect(search_engine.capitalize_words('hello world')).to eql('Hello World')
    end
  end
end
