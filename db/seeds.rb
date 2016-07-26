require('./lib/ingredient')
require('./lib/glass')
require('./lib/recipe')

ingredient_list = ["Gin", "Scotch", "Rum", "Bourbon", "Cognac", "Tequila", "Brandy", "Vodka", "Whiskey"]

ingredient_list.each do |name|
  Ingredient.create(name: name)
end


glass_list = ["Highball", "Martini", "Shot", "Oldfashion", "Bucket"]

glass_list.each do |name|
  Glass.create(name: name)
end


recipe_list = [
  ["Gin Rickey", "Pour juice of half a lime and 1.5 oz gin into a highball glass over ice cubes. Fill with carbonated water and stir. Add the wedge of lime and serve.", 1],
  ["Martini", "In cocktail shaker filled with ice, combine 2 oz of gin and 1/2 oz vermouth. Stir well, about 20 seconds, then strain into martini glass. Garnish with olive and serve.", 2]
]

recipe_list.each do |name, instruction, glass_id |
  Recipe.create(name: name, instruction: instruction, glass_id: glass_id)
end
