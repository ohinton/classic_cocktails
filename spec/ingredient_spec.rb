require("spec_helper")

describe(Ingredient) do
  it("validates presence of name") do
    ingredient = Ingredient.new({:name => ''})
    expect(ingredient.save()).to(eq(false))
  end

  it("converts the ingredient name to titlecase") do
    ingredient = Ingredient.create({:name => "test name"})
    expect(ingredient.name()).to(eq("Test Name"))
  end

  describe("#recipes") do
    it("belongs to many recipes") do
      test_ingredient = Ingredient.create({:name => "test ingredient"})
      test_recipe1 = Recipe.create({:name => "test recipe1"})
      test_recipe2 = Recipe.create({:name => "test recipe2"})
      test_ingredient.recipes.push(test_recipe1, test_recipe2)
      expect(test_ingredient.recipes()).to(eq([test_recipe1, test_recipe2]))
    end
  end

end
