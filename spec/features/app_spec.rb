require 'rails_helper'
require 'capybara/rails'


feature 'Cage Movies' do

  scenario 'User can see homepage' do
    visit "/"
    expect(page).to have_content("Cageflix")
    expect(page).to have_content("Netflix for Nic Cage movies")
  end

  scenario 'User can add new movie' do
    visit "/"
    expect(page).to have_content("Cageflix")
    expect(page).to have_content("Netflix for Nic Cage movies")
    click_on "Add Movie"
    fill_in "Name", with: "Moonstruck"
    fill_in "Year", with: "1987"
    fill_in "Synopsis", with: "Moonstruck"
    save_and_open_page
    click_on "Create Movie"
    expect(page).to have_content("Task Movie was created successfully!")
  end
end