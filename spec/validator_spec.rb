require_relative '../lib/validator.rb'

describe Validator do
  let(:validator) {Validator.new}
  context "#search_type_validator" do
    it "returns true if '1' is given" do
      expect(validator.search_type_validator('1')).to eql(true)
    end

    it "returns true if '2' is given" do
      expect(validator.search_type_validator('2')).to eql(true)
    end

    it "returns false if not '1' or '2' are given" do
      expect(validator.search_type_validator('9')).to eql(false)
    end
  end
end
