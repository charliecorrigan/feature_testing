require './spec/spec_helper'

RSpec.describe "When a user visits the homepage" do
  it "they see a welcome message" do
    # As a user
    # When I visit the root page
    visit('/')
    # I should see a welcome message
    expect(page).to have_content("Welcome")
    # expect(page).to have_css("h1")

  end
end