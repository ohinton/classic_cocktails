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
end
