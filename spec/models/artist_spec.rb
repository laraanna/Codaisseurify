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


end
