class Validator
  def search_type_validator(command)
    command == '1' || command == '2' ? true : false
  end

  def place_validator(place)
    (1..250) == place
  end

  def empty_validator(title)
    title.empty? ? true : false
  end
end
