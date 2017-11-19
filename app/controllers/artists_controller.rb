class ArtistsController < ApplicationController
  before_action :get_artist, only: [:show, :destroy]

  def index
    @artists = Artist.all
  end

  def show
   @songs = @artist.songs
   @song = Song.new

   respond_to do |format|
     format.html { render :show }
     format.json { render json: @artist}
   end

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
