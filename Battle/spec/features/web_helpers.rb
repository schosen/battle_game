def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Sarah'
  fill_in :player_2, with: 'Michael'
  click_button 'Submit'
end