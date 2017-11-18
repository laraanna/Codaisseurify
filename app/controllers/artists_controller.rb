class ArtistsController < ApplicationController
  before_action :get_artist, only: [:show, :destroy]

  def index
    @artists = Artist.all.order_name_asc
  end

  def show
   @songs = @artist.songs
   @song = Song.new
  end

  def destroy
    @artist.destroy
    redirect_to artists_path
  end

  private

  def get_artist
    @artist = Artist.find(params[:id])
  end




end
