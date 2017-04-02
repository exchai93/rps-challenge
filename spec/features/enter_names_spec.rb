feature 'Enter names' do

  scenario 'Enter player name' do
    visit ('/')
    click_button 'Start playing!'
    click_button 'Flying solo'
    click_button 'Submit'
    expect(page).to have_content "'s turn"
  end

end
