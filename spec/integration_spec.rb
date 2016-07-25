require("spec_helper")

describe("the index route", :type => :feature) do
  it "takes us to the home page" do
    visit "/"
    expect(page).to have_content("Landing")
  end
end
