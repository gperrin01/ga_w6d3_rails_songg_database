class Song < ActiveRecord::Base
  has_many :song_genres, dependent: :destroy
  has_many :genres, through: :song_genres

  has_many :album_songs, dependent: :destroy
  has_many :albums, through: :album_songs
end
