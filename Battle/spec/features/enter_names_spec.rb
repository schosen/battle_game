require "capybara/rspec"
require_relative "../../app"

Capybara.app = Battle

feature 'Testing name form' do 
  scenario 'can fill in name on form, and see name on-screen' do
    sign_in_and_play
    expect(page).to have_content 'Sarah vs. Michael'
  end
end 