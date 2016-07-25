require("spec_helper")

describe(Recipe) do
  it("validates presence of name") do
    recipe = Recipe.new({:name => ''})
    expect(recipe.save()).to(eq(false))
  end

  it("converts the recipe name to titlecase") do
    recipe = Recipe.create({:name => 'test name'})
    expect(recipe.name()).to(eq("Test Name"))
  end

end
