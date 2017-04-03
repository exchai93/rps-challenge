feature 'Player choice' do

  before do
    visit ('/')
    click_button 'Start playing!'
    click_button 'Flying solo'
    fill_in 'name', with: 'Emily'
    click_button 'Submit'
  end

  scenario 'See weapon options' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Scissors'
    expect(page).to have_content 'Paper'
  end

  scenario 'Confirms the player\'s choice of weapon' do
    click_link 'Rock'
    click_button 'Play!'
    expect(page).to have_content 'You chose Rock'
  end

end
