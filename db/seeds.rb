require('./lib/ingredient')
require('./lib/glass')
require('./lib/recipe')

ingredient_list = ["Gin", "Scotch", "Rum", "Bourbon", "Cognac", "Tequila", "Brandy", "Vodka", "Whiskey", "Champagne"]

ingredient_list.each do |name|
  Ingredient.create(name: name)
end


glass_list = ["Highball", "Martini", "Shot", "Oldfashioned", "Bucket", "Champagne Flute", "Rocks Glass", "Imperial Pint", "Brandy Snifter", "Collins", "Bottle"]

glass_list.each do |name|
  Glass.create(name: name)
end


recipe_list = [
  ["Gin Rickey", "Pour juice of half a lime and 1.5 oz gin into a highball glass over ice cubes. Fill with carbonated water and stir. Add the wedge of lime and serve.", 1, "http://f52.co/2axAsaH"],
  ["Martini", "In cocktail shaker filled with ice, combine 2 oz of gin and 1/2 oz vermouth. Stir well, about 20 seconds, then strain into martini glass. Garnish with olive and serve.", 2, "http://bit.ly/1ZJuKS1"],
  ["French 75", "In cocktail shaker, combine 1.5 oz gin, .75 oz lemon juice, and .5 oz simple syrup. Add ice and shake vigorously for 20 seconds. Strain into chilled Champagne flute and top with 2 oz of sparkling wine, such as brut Champagne. Garnish lemon twist and serve.", 6, "http://bit.ly/2aNbbXY"],
  ["South Side", "In a shaker, gently muddle the 4 mint and 1 oz lemon juice. Add the remaining ingredients 2 oz gin, 1 oz simple syrup and fill with ice. Shake, and strain into a chilled Martini glass. Garnish with a mint sprig or lemon twist.", 2, "http://bit.ly/2a7qwkw"],
  ["Side Car", "In a shaker, combine 2 oz cognac, 1 oz orange-flavored liqueur (such as Cointreau), .5 oz lemon juice. Shake, and strain into a chilled Martini glass. Garnish: sugared rim.", 2, "http://bit.ly/2ahq2vb"],
  ["Mint Julep", "In a highball glass gently muddle 4 mint, 1 teaspoon sugar and 2 teaspoons water. Fill the glass with cracked ice, add 2 oz Bourbon and stir well until the glass is well frosted. Garnish with a mint sprig.", 1, "http://bit.ly/2agtYsE"],
  ["Mary Pickford", "Add 1.5 oz white rum, 1.5 oz pineapple juice, 1 tsp Grenadine and 6 drops cherry liqueur to a cocktail shaker and fill with ice. Shake and strain into a chilled sugar rimmed martini glass. Garnish: a sprig of mint.", 2, "http://bit.ly/2aNbzFF"],
  ["Ward 8", "Add 2 oz Rye whiskey, .5 oz Lemon juice, 5 oz Orange juice, and 2 tsp Grenadine to a shaker and fill with ice.  Shake, strain into a chilled martini glass, and garnish with 2 speared cherries.", 2, "http://bit.ly/2aNbzFF"],
  ["Dubonnet Cocktail", "Add 1.5 oz Dubonnet Rouge, 1.5 oz Gin and 1 dash Angostura bitters to a mixing glass and fill with ice. Stir, and strain into a Martini glass. Garnish with a lemon twist.", 2, "http://bit.ly/2axAU8W"],
  ["Manhattan", "Add 2oz Rye whiskey, .5oz sweet vermouth, and a few drops of bitters to a shaker with ice and mix (do NOT shake) with a spoon. Strain into a chilled martini glass. Garnish with a brandy-soaked cherry.", 2, "http://bit.ly/2acROrn"],
  ["Stabby Lambda", "Add 3oz of high end scotch and serve over ice. Garnish: Sword stabbed through a lemon twist and candied ginger, seriously!", 7, "http://bit.ly/2akAOy9"],
  ["Mondrian Fury", "Float 4oz of mezcal in 16oz of tequila. Serve neat in an imperial pint. Garnish at your own risk.", 8, "http://bit.ly/2agunLR"],
  ["Corpse Reviver", "Add 1 oz Cognac, 1 oz Calvados and .5 oz Sweet vermouth to a shaker and fill with ice. Shake well and strain into a cocktail glass. Garnish: none", 2, "http://bit.ly/2atLY5X"],
  ["Sassy Comrade", "Pour 2oz of low-shelf vodka into a shot glass and drink - do NOT sip.", 3, "http://bit.ly/2agXiPS"],
  ["Capybara", "Pour 3 oz of brandy into a brandy snifter and enjoy. Garnish with a cherry.", 9, "http://bit.ly/2ae9zWm"],
  ["Boulevardier", "Add 1.25 oz Bourbon, 1 oz Campari and 1 oz Sweet vermouth, to a rocks glass filled with ice and stir to combine. Pour into a rocks glass and garnish with an orange twist. Optional: serve the drink up", 7, "http://bit.ly/2akBbJg"],
  ["Death In The Afternoon", "4.5 oz Champagne, 1.5 oz Absinthe, Pour the absinthe into a Champagne flute or coupe. Top with the Champagne.", 6, "http://bit.ly/2aejdbx"],
  ["Gimlet", "Add 2.5 oz Gin, .5 oz Lime juice, .5 oz Simple syrup to a shaker and fill with ice. Shake, and strain into a chilled cocktail glass. Garnish with a lime wheel.", 2, "http://bit.ly/2aqPr6Z"],
  ["Old Fashioned", "Muddle carefully in the bottom of an old fashioned glass the 1 tsp sugar, 3 dashes of bitters and 2 slices of orange. Remove the orange rind and add 2oz Bourbon, ice, and splash of soda. Garnish with a fresh orange slice and a cherry.", 4, "http://bit.ly/2aAgTQu"],
  ["Pimm’s Cup", "To make a Pimm's cup, first add 3 oz Champagne, 2 oz Pimm's No. 1, 1  cucumber slices, 1  Strawberry, hulled and cut into quarters, half Orange slice, 1  Lemon slice and 6  Mint leaves to a highball glass filled with ice and stir to combine. Garnish with a cucumber.", 10, "http://bit.ly/2aejmvB"],
  ["Singapore Sling", "Add .75 oz Gin, .25 oz orange liqueur, .25 oz cherry liqueur, .25 oz herbal liqueur, 1 oz pineapple juice, .5 oz lime juice and 1 dash bitters to a shaker and fill with ice. Shake, and strain into a highball glass. Fill with club soda and garnish with an orange slice and a cherry.", 1, "http://bit.ly/2afdur4"],
  ["Tom Collins", "Add .75 oz fresh lemon juice, .75 oz simple syrup (one part water, one part sugar) and 1.5 oz gin to a shaker and fill with ice. Shake well and strain into a highball or Collins glass filled with fresh ice. Top with club soda and garnish with a lemon wheel and a cherry.", 10, "http://bit.ly/2agBcNe"],
  ["Whiskey Sour", "In a cocktail shaker with ice, add egg white and shake briefly. Then add 1.5 oz whiskey, 1.5 oz lemon juice and 1 oz simple syrup with ice and shake well. Strain into rocks glass over 1 large ice cube. Garnish with a cherry.", 10, "http://bit.ly/1Tr6q9y"],
  ["Sazerac", "In an Old-Fashioned glass, muddle a sugar cube with a few drops of water. Add several small ice cubes and 2.5 oz  rye whiskey, 2 dashes Peychaud's bitters, and 1 dash Angostura bitters. Stir well and strain into a second, chilled, Old-Fashioned glass in which you have rolled around a few drops of absinthe until its inside is thoroughly coated, pouring off the excess. Garnish with a twist of lemon peel.", 4, "http://bit.ly/2axKysh"],
  ["Negroni", "Combine 1 oz Campari, 1 oz sweet vermouth and 1 oz gin in a short glass filled with ice and stir. Run an orange peel around the edge of the glass, lightly squeezing to express the oils. Drop the peel into the glass.", 7, "http://bit.ly/2axLlJF"],
  ["Colleen Bawn", "Combine 1.5 oz rye whiskey, 1.5 oz Benedictine, 1.5 oz green Chartreuse, a fresh egg and a teaspoon of sugar in a cocktail shaker. Shake very hard, without ice, until the egg is well mixed with the other ingredients, about 10 seconds. Add ice and shake again for about 10 seconds. Strain into chilled cocktail glasses; garnish with a grating of fresh nutmeg and ground cinnamon.", 2, "http://bit.ly/2aAitBE"],
  ["Bourbon Mixin", "Gently muddle slices of pineapple, orange and lemon, add 2 oz bourbon, and .5 oz of orange liqueur. Ice and mix well. Garnish with some speared fruit and serve with a side of SASS.", 7, "http://bit.ly/2aek6AS"],
  ["Yukihiro Matsumoto Daiquiri", "Add .75 oz white rum, .5 oz cherry liqueur, a splash of grapefruit and a splash of lime juice to shaker filled with ice. Shake sharply and strain into a chilled martini glass.", 2, "http://bit.ly/2ajWM7j"],
  ["Hampton Catlin’s Silk Stocking", "Add .75 oz tequila, .5 oz white creme de cacao, a splash of grenadine, .5 oz heavy cream to blender. Add two scoops of crushed ice and blend for 20 seconds. Garnish with two raspberries and sugar the rim with brown sugar.", 2, "http://bit.ly/2akL8Gl"],
  ["The Falsey", "Shake 2 oz vodka, a dash of dry vermouth, a dash of sweet vermouth, 2 oz fresh orange juice, and 1 egg white vigorously over ice. Strain into a chilled rocks glass.", 7, "http://bit.ly/2aqRnwj"],
  ["Mike Goren Brave Bull", "Fill rocks glass with ice and add .5 oz of tequila and .5 oz of coffee liqueur. Garnish with a lime twist. Optional: if you are brave, add a small splash of soda, make it a very small splash!.", 7, "http://bit.ly/2agCN5U"],
  ["Truthy", "Open bottle of real gin and drink, guarantee no hangover.", 11, "/img/realgin.jpg"]
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
  [4, 16],
  [10, 17],
  [1, 18],
  [4, 19],
  [10, 20],
  [1, 21],
  [1, 22],
  [9, 23],
  [9, 24],
  [1, 25],
  [9, 26],
  [4, 27],
  [3, 28],
  [6, 29],
  [8, 30],
  [6, 31],
  [1, 32]
]

ingredient_recipes_list.each do |ingredient_id, recipe_id|
  recipe = Recipe.find(recipe_id)
  ingredient = Ingredient.find(ingredient_id)
  recipe.ingredients.push(ingredient)
end
