feature 'Player choice' do

  scenario 'Player chooses rock paper or scissors' do
    visit ('/')
    click_button 'Start playing!'
    click_button 'Flying solo'
    click_button 'Submit'
    expect(page).to have_content 'Weapon of choice:'
  end

  scenario 'Confirms the player\'s choice' do
    visit ('/')
    click_button 'Start playing!'
    click_button 'Flying solo'
    click_button 'Submit'
    click_button 'Attack!'
    expect(page).to have_content 'You chose Rock'
  end

end
