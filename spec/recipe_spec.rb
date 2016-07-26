require("spec_helper")

describe(Recipe) do
  it("validates presence of name") do
    recipe = Recipe.new({:name => ''})
    expect(recipe.save()).to(eq(false))
  end

  it("converts the recipe name to titlecase") do
    recipe = Recipe.create({:name => "test name"})
    expect(recipe.name()).to(eq("Test Name"))
  end

  describe("#glass") do
    it("has a glass") do
      test_glass = Glass.create({:name => "martini"})
      test_recipe = Recipe.create({:name => "Manhattan", :glass_id => test_glass.id})
      expect(test_recipe.glass()).to(eq(test_glass))
    end
  end

  describe("#ingredients") do
    it("belongs to many ingredients") do
      test_recipe = Recipe.create({:name => "test recipe"})
      test_ingredient1 = Ingredient.create({:name => "test ingredient1"})
      test_ingredient2 = Ingredient.create({:name => "test ingredient2"})
      test_recipe.ingredients.push(test_ingredient1, test_ingredient2)
      expect(test_recipe.ingredients()).to(eq([test_ingredient1, test_ingredient2]))
    end
  end



end
