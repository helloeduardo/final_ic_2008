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
end
