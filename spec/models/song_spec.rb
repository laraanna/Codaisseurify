require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "Validations of Presence" do

    it "it is invalid without a Song title" do
      song = Song.new(title: "")
      song.valid?
      expect(song.errors).to have_key(:title)
    end

    it "it is invalid without a Release Date" do
      song = Song.new(year_of_release: "" )
      song.valid?
      expect(song.errors).to have_key(:year_of_release)
    end
  end


  describe "when creating songs with identical names" do
    let(:song) { build :song, title: 'Lala Land' }

    before do
      FactoryGirl.create(:song, title: 'Lala Land')
    end

    it "raises unique validation error" do
      expect(song).not_to be_valid
    end
  end

  describe "assosication with sartists" do
    let(:artist) {create :artist}

    it "belongs to an artist" do
      song = artist.songs.build(title: "Mann im Mond")
      expect(song.artist).to eq(artist)
    end
  end
end
