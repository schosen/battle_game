require "capybara/rspec"
require_relative "../../app"

Capybara.app = Battle

feature 'Testing name form' do 
  scenario 'can fill in name on form, and see name on-screen' do
    visit('/')
    fill_in :player_1, with: 'Sarah'
    fill_in :player_2, with: 'Michael'
    click_button 'Submit'
    expect(page).to have_content 'Sarah vs. Michael'
  end
end 