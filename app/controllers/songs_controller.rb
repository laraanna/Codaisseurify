class SongsController < ApplicationController
  before_action :get_artist, only: [:show, :edit,:create, :destroy]

  def index
    @songs = Song.all
  end

  def new
   @song = Song.build
  end

  def create
    @song = @artist.songs.build(song_params)
    if @song.save
      redirect_to artist_path(@artist), notice: "Song successfully added!"
    else
      render :new
    end
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
