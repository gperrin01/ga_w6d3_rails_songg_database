class SongsController < ApplicationController

  def index
    @songs = Song.all
  end
  def show
    @song = Song.find(params[:id])
    @albums = @song.albums
    @genres = @song.genres.uniq
    @result = []
  end
end
