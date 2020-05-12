class Validator
  def search_type_validator(command)
    command.include?('1') || command.include?('2') ? true : false
  end

  def place_validator(place)
    (1..250) == place
  end

  def empty_validator(title)
    title.empty? ? true : false
  end
end
