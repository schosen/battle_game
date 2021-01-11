require "capybara/rspec"
require_relative "../../app"
require_relative "web_helpers"

Capybara.app = Battle

feature 'Attack player' do
  scenario 'attacks player 2 and get confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Sarah attacked Michael'
  end
end