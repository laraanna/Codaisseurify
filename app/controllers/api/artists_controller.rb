class Api::ArtistsController < ApplicationController

  def index
    artists = Artist.all
    render status: 200, json: artists
  end


end
