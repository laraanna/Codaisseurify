require 'rails_helper'

feature 'Manage tasks', js: true do
  let(:artist) {create :artist}

  scenario 'add a new song' do
    visit artist_path(artist)
    fill_in 'song_title', with: 'A Song'

    page.execute_script("$('form').submit()")

    expect(page).to have_content('A Song')
  end



end
