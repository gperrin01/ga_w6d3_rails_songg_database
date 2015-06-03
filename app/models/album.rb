class Album < ActiveRecord::Base
  has_many :album_songs, dependent: :destroy
  has_many :songs, through: :album_songs

  has_many :genres, through: :songs
end
