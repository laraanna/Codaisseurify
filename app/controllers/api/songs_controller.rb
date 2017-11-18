class Api::SongsController < ApplicationController

  def index
    songs = Song.all
    render status: 200, json: songs
  end

  def create
    song = artist.songs.build(song_params)
    if song.save
      render status: 200, json: song
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    song = artist.songs.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Song successfully deleted"
    }.to_json
  end



  private

  def get_artist
    artist = Artist.find(params[:artist_id])
  end

  def song_params
      params.require(:song).permit(:title, :year_of_release, :artist_id)
  end
end
