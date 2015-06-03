class Genre < ActiveRecord::Base
  has_many :song_genres, dependent: :destroy
  has_many :songs, through: :song_genres

  has_many :albums, through: :songs
  
end
