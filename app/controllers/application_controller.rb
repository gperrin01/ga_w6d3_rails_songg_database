class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  @all_genres = Genre.all
  @all_songs = Song.all
  @all_albums = Album.all

end
