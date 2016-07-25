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

# NEED TO FIGURE OUT HOW TO WRITE THIS SPEC! #
#   describe("#ingredients") do
# end

  describe("#glass") do
    it("has a glass") do
      test_glass = Glass.create({:name => "martini"})
      test_recipe = Recipe.create({:name => "Manhattan", :glass_id => test_glass.id})
      expect(test_recipe.glass()).to(eq(test_glass))
    end
  end



end
