require "capybara/rspec"
require_relative "../../app"
require_relative "web_helpers"

Capybara.app = Battle

feature 'view points' do
  scenario 'can see player 2 hit points' do 
    sign_in_and_play
    expect(page).to have_content 'Michael: 60 Hit Points'
  end 
end 