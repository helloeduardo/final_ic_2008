require 'date'

class CookBook
  attr_reader :recipes, :date

  def initialize
    @recipes = []
    @date = Date.today.strftime('%m-%d-%Y')
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    recipes.flat_map do |recipe|
      recipe.ingredients.map(&:name)
    end.uniq
  end

  def highest_calorie_meal
    recipes.max_by(&:total_calories)
  end

  def summary
    recipes.map do |recipe|
      { name: recipe.name,
        details: recipe.details }
    end
  end
end
