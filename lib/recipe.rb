class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, amount)
    @ingredients_required[ingredient] += amount
  end

  def ingredients
    ingredients_required.keys
  end

  def total_calories
    ingredients_required.sum do |ingredient, amount|
      ingredient.calories * amount
    end
  end

  def details
    {
      ingredients: ingredient_details,
      total_calories: total_calories
    }
  end

  def ingredient_details
    ingredients_required.map do |ingredient, amount|
      {
        ingredient: ingredient.name,
        amount: "#{amount} #{ingredient.unit}"
      }
    end
  end
end
