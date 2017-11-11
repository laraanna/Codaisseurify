class SongsController < ApplicationController

  def index
    @songs = artist.songs
  end

  def new
    @song = artist.songs.build
  end

  def create
   @song = artist.songss.build(song_params)
   if @song.save
     redirect_to @song, notice: "Song created"
   else
     render :new
   end
  end

  private

  def song_params
    params.require(:song).permit( :title, :year_of_release )
  end

end
