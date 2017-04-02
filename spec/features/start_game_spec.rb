feature 'Start game' do

  scenario 'Able to play the game' do
    visit ('/')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end

  scenario 'Choose one player' do
    visit ('/')
    click_button 'Start playing!'
    expect(page).to have_content 'Flying solo'
  end

end