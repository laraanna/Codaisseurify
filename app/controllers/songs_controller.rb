class SongsController < ApplicationController
  before_action :get_artist, only: [:show,:edit,:create, :destroy]

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])

    respond_to do |format|
      format.html { render :show }
      format.json { render json: @song}
    end
  end


  def new
   @song = get_artist.songs.build
  end

  def create
    @song = @artist.songs.build(song_params)

    respond_to do |format|
      if @song.save
        format.html {redirect_to artist_path(@artist), notice: 'Song has been added successfully!' }
        format.json { render json: @song, status: :created }
      else
        format.html { redirect_to artist_path(@artist) }
        format.json { render json:  @song.errors, status: :unprocessable_entity}
      end
    end
  end



  def destroy
    @song = @artist.songs.find(params[:id])
    @song.destroy
    respond_to do |format|
      format.html { redirect_to artist_path(@artist), notice: 'Song has been destroyed successfully.'}
      format.json { head :no_content }
    end
  end


  private

  def get_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
      params.require(:song).permit(:title, :year_of_release, :artist_id)
  end


end
