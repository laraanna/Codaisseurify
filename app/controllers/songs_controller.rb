class SongsController < ApplicationController
  before_action :get_artist

  def new
   @song = Artist.new
  end

  def create
    @song = @artist.songs.create(song_params)
    redirect_to artist_path(@artist)
  end


  def destroy
    @song = @artist.songs.find(params[:id])
    @song.destroy
    redirect_to artist_path(@artist)
  end

  private

  def get_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
      params.require(:song).permit(:title, :year_of_release, :artist_id)
  end


end
