require './spec/spec_helper'

RSpec.describe "When a user visits the new horse page" do
  it "they can create a new horse" do
    Jockey.create(name: "Bill")
    Breed.create(name: "Bay")
    # As a user
    # When I visit the new horse page
    visit('/horses/new')
    #And then I fill in the name
    fill_in("horse[name]", with: "Jimbo")
    #And then I fill in the total_winnings
    fill_in("horse[total_winnings]", with: 5)
    #And then I fill in the jockey
    select 'Bill', from: 'horse[jockey_id]'
    #And then I fill in the breed
    select 'Bay', from: 'horse[breed_id]'
    click_button 'Create New Horse'
    # I should redirect to horse's page and see new horse info'
    save_and_open_page
    expect(current_path).to eq('/horses/1')
    expect(page).to have_content("Jimbo")
  end
end

