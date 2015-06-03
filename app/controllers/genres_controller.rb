class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end
  def show
    @genre = Genre.find(params[:id])
    @songs = @genre.songs
    @albums = @genre.albums.uniq
    # binding.pry
  end

end
