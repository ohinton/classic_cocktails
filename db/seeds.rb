require('./lib/ingredient')
require('./lib/glass')
require('./lib/recipe')

ingredient_list = ["Gin", "Scotch", "Rum", "Bourbon", "Cognac", "Tequila", "Brandy", "Vodka", "Whiskey"]

ingredient_list.each do |name|
  Ingredient.create(name: name)
end


glass_list = ["Highball", "Martini", "Shot", "Oldfashion", "Bucket", "Champagne Flute", "Rocks Glass", "Imperial Pint", "Brandy Snifter"]

glass_list.each do |name|
  Glass.create(name: name)
end


recipe_list = [
  ["Gin Rickey", "Pour juice of half a lime and 1.5 oz gin into a highball glass over ice cubes. Fill with carbonated water and stir. Add the wedge of lime and serve.", 1, "http://bit.ly/2azW7QU"],
  ["Martini", "In cocktail shaker filled with ice, combine 2 oz of gin and 1/2 oz vermouth. Stir well, about 20 seconds, then strain into martini glass. Garnish with olive and serve.", 2],
  ["French 75", "In cocktail shaker, combine 1.5 oz gin, .75 oz lemon juice, and .5 oz simple syrup. Add ice and shake vigorously for 20 seconds. Strain into chilled Champagne flute and top with 2 oz of sparkling wine, such as brut Champagne. Garnish lemon twist and serve.", 6],
  ["South Side", "In a shaker, gently muddle the 4 mint and 1 oz lemon juice. Add the remaining ingredients 2 oz gin, 1 oz simple syrup and fill with ice. Shake, and strain into a chilled Martini glass. Garnish with a mint sprig or lemon twist.", 2],
  ["Side Car", "In a shaker, combine 2 oz cognac, 1 oz orange-flavored liqueur (such as Cointreau), .5 oz lemon juice. Shake, and strain into a chilled Martini glass. Garnish: sugared rim.", 2],
  ["Mint Julep", "In a highball glass gently muddle 4 mint, 1 teaspoon sugar and 2 teaspoons water. Fill the glass with cracked ice, add 2 oz Bourbon and stir well until the glass is well frosted. Garnish with a mint sprig.", 1],
  ["Mary Pickford", "Add 1.5 oz white rum, 1.5 oz pineapple juice, 1 tsp Grenadine and 6 drops Maraschino liqueur to a cocktail shaker and fill with ice. Shake and strain into a chilled martini glass. Garnish: none.", 2],
  ["Ward 8", "Add 2 oz Rye whiskey, .5 oz Lemon juice, 5 oz Orange juice, and 2 tsp Grenadine to a shaker and fill with ice.  Shake, strain into a chilled martini glass, and garnish with 2 speared cherries.", 2],
  ["Dubonnet Cocktail", "Add 1.5 oz Dubonnet Rouge, 1.5 oz Gin and 1 dash Angostura bitters to a mixing glass and fill with ice. Stir, and strain into a Martini glass. Garnish with a lemon twist.", 2],
  ["Manhattan", "Add 2oz Rye whiskey, .5oz sweet vermouth, and a few drops of bitters to a shaker with ice and mix (do NOT shake) with a spoon. Strain into a chilled martini glass. Garnish with a brandy-soaked cherry.", 2],
  ["Stabby Lambda", "Add 3oz of high end scotch and serve neat. Garnish: Sword stabbed through an ice cube!", 7],
  ["Mondrian Fury", "Float 4oz of mezcal in 16oz of tequila. Serve neat in an imperial pint. Garnish at your own risk.", 8],
  ["Corpse Reviver", "Add 1 oz Cognac, 1 oz Calvados and .5 oz Sweet vermouth to a shaker and fill with ice. Shake well and strain into a cocktail glass. Garnish: none", 2],
  ["Sassy Comrade", "Pour 2oz of low-shelf vodka into a shot glass and drink - do NOT sip.", 3],
  ["Capybara", "Pour 3 oz of brandy into a brandy snifter and enjoy", 9],
  ["Boulevardier", "Add 1 oz Campari, 1 oz Sweet vermouth, and 1.25 oz Bourbon to a rocks glass filled with ice and stir to combine.  Pour into a rocks glass and garnish with an orange twist. To serve the drink up, add all the ingredients to a mixing glass and fill with ice.", 7]
]

recipe_list.each do |name, instruction, glass_id, photo |
  Recipe.create(name: name, instruction: instruction, glass_id: glass_id, photo: photo)
end

ingredient_recipes_list = [
  [1, 1],
  [1, 2],
  [1, 3],
  [1, 4],
  [5, 5],
  [4, 6],
  [3, 7],
  [9, 8],
  [1, 9],
  [9, 10],
  [2, 11],
  [6, 12],
  [5, 13],
  [8, 14],
  [7, 15],
  [4, 16]
]

ingredient_recipes_list.each do |ingredient_id, recipe_id|
  recipe = Recipe.find(recipe_id)
  ingredient = Ingredient.find(ingredient_id)
  recipe.ingredients.push(ingredient)
end
