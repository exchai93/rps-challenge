xfeature 'Multiplayer option' do

  scenario 'enables two players' do
    visit ('/')
    click_button 'Start playing!'
    click_button 'Two of us'
    expect(page).to have_content 'Emily vs. Rollo'
  end

end
