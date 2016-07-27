require("spec_helper")

describe("the index route", :type => :feature) do
  it "takes us to the home page" do
    visit "/"
    expect(page).to have_content("Classic Cocktail Companion")
  end
end

describe("the ingredients list route", :type => :feature) do
  it "takes us to the ingredients list page" do
    visit "/"
    click_link("Here")
    expect(page).to have_content("Choose Your Liqour")
  end
end

describe("the recipes with chosen ingredient route", :type => :feature) do
  it "takes us to the recipe results page" do
    visit "/"
    click_link("Here")
    select("Gin", :from => "ingredient")
    click_button("Find recipes")
    expect(page).to have_content("Recipes with Gin")
  end
end

# describe( "a single recipe route", :type => :feature) do
#   it "takes us to a single recipe" do
#     visit "/"
#     click_link("Here")
#     select("Scotch", :from => "ingredient")
#     click_button("Find recipes")
#     click_link("Stabby Lambda")
#     expect(page).to have_content("Stabby Lambda")
#   end
# end
