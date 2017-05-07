require './spec/spec_helper'

describe "When a user visits the jockeys page" do
  it "sees total winnings displayed" do
    Breed.create(name: "Bay")
    Jockey.create(name: "Bill")
    Horse.create(name: "Jimbo", total_winnings: 5, breed_id: 1, jockey_id: 1)
    Horse.create(name: "Frank", total_winnings: 5, breed_id: 1, jockey_id: 1)
    Horse.create(name: "Joan", total_winnings: 5, breed_id: 1, jockey_id: 1)

    visit('/jockeys/1')

    save_and_open_page
    expect(page).to have_content("15")
  end
end


# As a user
# When I visit the Jockey's individual page
# I expect to see their total winnings

# That a Jockey’s total winnings are displayed on their page