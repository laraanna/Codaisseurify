class Api::ArtistsController < ApplicationController

  def index
    artists = Artist.all
    render status: 200, json: artists
  end

  def show
   artist = Artist.find(params[:id])
   render status: 200, json:artist
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy

    render status: 200, json: {
      message: "Artist successfully deleted"
    }.to_json
  end


end
