feature 'View hit points' do
  scenario 'see Player 2 hit poits' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end
end