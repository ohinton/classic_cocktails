require("spec_helper")

describe(Glass) do
  describe("#recipes") do
    it("has many recipes") do
      test_glass = Glass.create({:name => "martini"})
      test_recipe1 = Recipe.create({:name => "Manhattan", :glass_id => test_glass.id})
      test_recipe2 = Recipe.create({:name => "Old Fashion", :glass_id => test_glass.id})
      expect(test_glass.recipes()).to(eq([test_recipe1, test_recipe2]))
    end
  end
end
