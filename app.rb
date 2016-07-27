require("bundler/setup")

Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file}

require('pry')

get ("/") do
  erb(:index)
end

get ("/ingredients") do
  @ingredients = Ingredient.all
  erb(:ingredients)
end

get ("/ingredients/recipes") do
  @ingredient = Ingredient.find(params.fetch('id').to_i())
  @recipes = Recipes.all
  erb(:results)
end

post ("/ingredients/recipes") do
  ingredient_id = params.fetch('ingredient')
  @ingredient = Ingredient.find(ingredient_id)
  @recipes = Recipe.all
  erb(:results)
end

get ("/recipes/:id") do
  @recipe = Recipe.find(params.fetch('id').to_i())
  @ingredient = Ingredient.find(ingredient_id)
  glass_id = @recipe.glass_id
  @glass = Glass.find(glass_id)
  erb(:recipe_info)
end

get ("/recipes") do
  @recipes = Recipe.order(name: :asc)
  erb(:recipes)
end
