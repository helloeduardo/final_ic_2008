class Ingredient
  attr_reader :name, :unit, :calories

  def initialize(details)
    @name = details[:name]
    @unit = details[:unit]
    @calories = details[:calories]
  end

end
