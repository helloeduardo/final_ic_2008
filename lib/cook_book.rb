class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    recipes.reduce([]) do |ingredients, recipe|
      ingredients << recipe.ingredients.map(&:name)
    end.flatten.uniq
  end

  def highest_calorie_meal
    recipes.max_by(&:total_calories)
  end
end
