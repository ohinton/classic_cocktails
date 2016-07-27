require('./lib/ingredient')
require('./lib/glass')
require('./lib/recipe')

ingredient_list = ["Gin", "Scotch", "Rum", "Bourbon", "Cognac", "Tequila", "Brandy", "Vodka", "Whiskey"]

ingredient_list.each do |name|
  Ingredient.create(name: name)
end


glass_list = ["Highball", "Martini", "Shot", "Oldfashion", "Bucket", "Champagne Flute"]

glass_list.each do |name|
  Glass.create(name: name)
end


recipe_list = [
  ["Gin Rickey", "Pour juice of half a lime and 1.5 oz gin into a highball glass over ice cubes. Fill with carbonated water and stir. Add the wedge of lime and serve.", 1],
  ["Martini", "In cocktail shaker filled with ice, combine 2 oz of gin and 1/2 oz vermouth. Stir well, about 20 seconds, then strain into martini glass. Garnish with olive and serve.", 2],
  ["French 75", "In cocktail shaker, combine 1.5 oz gin, .75 oz lemon juice, and .5 oz simple syrup. Add ice and shake vigorously for 20 seconds. Strain into chilled Champagne flute and top with 2 oz of sparkling wine, such as brut Champagne. Garnish lemon twist and serve.", 6],
  ["South Side", "In a shaker, gently muddle the 4 mint and 1 oz lemon juice. Add the remaining ingredients 2 oz gin, 1 oz simple syrup and fill with ice. Shake, and strain into a chilled Martini glass. Garnish with a mint sprig or lemon twist.", 2],
  ["Side Car", "In a shaker, combine 2 oz cognac, 1 oz orange-flavored liqueur (such as Cointreau), .5 oz lemon juice. Shake, and strain into a chilled Martini glass. Garnish: sugared rim.", 2]
]

recipe_list.each do |name, instruction, glass_id |
  Recipe.create(name: name, instruction: instruction, glass_id: glass_id)
end
