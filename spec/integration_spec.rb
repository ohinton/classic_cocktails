require("spec_helper")

describe("the index route", :type => :feature) do
  it "takes us to the home page" do
    visit "/"
    expect(page).to have_content("Landing")
  end
end

describe("the ingredients list route", :type => :feature) do
  it "takes us to the ingredients list page" do
    visit "/"
    click_link("Enter")
    expect(page).to have_content("Choose your ingredients:")
  end
end
