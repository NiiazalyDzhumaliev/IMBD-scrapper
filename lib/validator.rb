class Validator
  def search_type_validator(command)
    command.eql?('1') || command.eql?('2') ? true : false
  end

  def place_validator(place)
    place.between?(1, 250) ? true : false
  end

  def empty_validator(title)
    title.empty? ? true : false
  end

  def choice_validator(choice)
    choice == '1' ? true : false
  end
end
