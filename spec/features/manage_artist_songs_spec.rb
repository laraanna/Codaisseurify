require 'rails_helper'

feature 'Manage Artist Songs', js: true do
  let(:artist) {create :artist}

  scenario 'add a new song' do
    visit artist_path(artist)
    fill_in 'song_title', with: 'A Song'
    page.execute_script("$('form').submit()")

    expect(page).to have_content('A Song')
  end

  scenario 'delete all songs' do
    visit artist_path(artist)

    fill_in 'song_title', with: 'A Song'
    page.execute_script("$('form').submit()")

    fill_in 'song_title', with: 'B Song'
    page.execute_script("$('form').submit()")

    click_on 'Delete Songs'

    expect(page).to have_content('')
  end

  scenario 'delete one song' do
    visit artist_path(artist)

    fill_in 'song_title', with: 'A Song'
    page.execute_script("$('form').submit()")

    click_on 'Delete'

    expect(page).to have_no_content('A Song')
  end



end
