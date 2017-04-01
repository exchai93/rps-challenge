feature 'Start game' do

  scenario 'Able to play the game' do
    visit ('/')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end

end
