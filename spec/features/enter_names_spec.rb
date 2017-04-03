feature 'Enter names' do

  scenario 'Enter player name' do
    visit ('/')
    click_button 'Start playing!'
    click_button 'Flying solo'
    fill_in 'name', with: 'Emily'
    click_button 'Submit'
    expect(page).to have_content "Emily's turn"
  end

end
