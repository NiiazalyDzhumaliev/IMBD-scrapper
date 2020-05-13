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

  context "#place_validator" do
    it "returns true if the number in (1..250) range" do
      expect(validator.place_validator(50)).to eql(true)
    end

    it "returns false if the number is not in (1..250) range" do
      expect(validator.place_validator(300)).to eql(false)
    end
  end

  context "#empty_validator" do
    it "returns true if string is empty" do
      expect(validator.empty_validator('')).to eql(true)
    end

    it "returns false if string is not empty" do
      expect(validator.empty_validator('hello')).to eql(false)
    end
  end

  context "#choice_validator" do
    it "returns true if the value is equal to '1'" do
      expect(validator.choice_validator('1')).to eql(true)
    end

    it "returns false if the value other than '1'" do
      expect(validator.choice_validator('2')).to eql(false)
    end
  end

  context "#yes_no_validator" do
    it "returns true if the value equal to 'y'" do
      expect(validator.yes_no_validator('y')).to eql(true)
    end

    it "returns true if the value equal to 'n'" do
      expect(validator.yes_no_validator('n')).to eql(true)
    end

    it "returns false if the value other than 'y' or 'n'" do
      expect(validator.yes_no_validator('o')).to eql(false)
    end
  end
end
