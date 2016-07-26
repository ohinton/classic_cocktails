require('./lib/ingredient')

ingredient_list = ["Gin", "Scotch", "Rum", "Bourbon", "Cognac", "Tequila", "Brandy", "Vodka", "Whiskey"]

ingredient_list.each do |name|
  Ingredient.create(name: name)
end
