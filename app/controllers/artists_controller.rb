class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
   @artist = Artist.find(params[:id])
   @photos = @artist.photos
   @songs = @artist.songs
  end


end