require 'rails_helper'

RSpec.describe Artist, type: :model do
    describe "Validations of Presence" do
      it "it is invalid without a name" do
        artist = Artist.new(name: "")
        artist.valid?
        expect(artist.errors).to have_key(:name)
      end

      it "it is invalid without a bio" do
        artist = Artist.new(bio:"")
        artist.valid?
        expect(artist.errors).to have_key(:bio)
      end


      it "it is invalid without a genre" do
        artist = Artist.new(genre:"")
        artist.valid?
        expect(artist.errors).to have_key(:genre)
      end
    end

    describe "Validating length" do
      it "it should not exceed 500 characters" do
        artist = Artist.new(bio: "x"*600)
        artist.valid?
        expect(artist.errors).to have_key(:bio)
      end
    end

    describe "association with song" do
      let!(:song) {create :song,artist: artist }
      let(:artist) {create :artist}
      it "has many songs" do
        song_1 = artist.songs.new(title: "This is a song")
        song_2 = artist.songs.new(title: "This is another song")

        expect(artist.songs).to include(song_1)
        expect(artist.songs).to include(song_2)
      end

      it "deletes associated songs" do
        expect {artist.destroy}.to change(Song, :count).by(-1)
      end
    end

    describe "Order Artists in ascending and descending order" do
      let!(:artist_one) {create :artist, name: "D"}
      let!(:artist_two) {create :artist, name: "A"}
      let!(:artist_three) {create :artist, name: "C"}

      it ".order_name_asc returns ascended sorted array" do
        expect(Artist.order_name_asc).to eq([artist_two, artist_three, artist_one])
      end

      it ".order_name_desc returns descended sorted array" do
        expect(Artist.order_name_desc).to eq([artist_one, artist_three, artist_two])
      end
    end


end
