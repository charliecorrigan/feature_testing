require './spec/spec_helper'

describe "When a user visits the index" do
  it "displays all horses" do
    Breed.create(name: "Bay")
    Jockey.create(name: "Bill")
    Horse.create(name: "Jimbo", breed_id: 1, jockey_id: 1)
    Horse.create(name: "Frank", breed_id: 1, jockey_id: 1)
    Horse.create(name: "Joan", breed_id: 1, jockey_id: 1)

    visit('/horses')

    expect(page).to have_content('Jimbo')
    expect(page).to have_content('Frank')
    expect(page).to have_content('Joan')
  end
end

# As a user
# When I visit the horse index
# I expect to see all the horses
