a1 = Album.create(name: 'weird mix')
a2 = Album.create(name: 'queen best of')
a3 = Album.create(name: 'classical')
g1 = Genre.create(name: 'rock')
g2 = Genre.create(name: 'house')
g3 = Genre.create(name: 'classical')
g4 = Genre.create(name: 'mixed')

all_songs = ['queen1', 'queen2', 'queen3', 'qeen4', 'queen5', 'queen6', 'guetta1', 'guetta2', 'guetta3', 'guetta4', 'guetta5', 'guetta6', 'guetta7', 'mozart1', 'mozart2', 'mozart3', 'mozart4', 'mozart5', 'mozart6', 'mozart7', ]

all_songs.each_with_index do |song, index|
  s = Song.create(name: song, price: rand(10...30)/10)
  if index <= 5  # then genre rock, album: queen, weird mix
    s.album_songs.create(album_id: a1.id)
    s.album_songs.create(album_id: a2.id)
    s.song_genres.create(genre_id: g1.id)
  elsif index <= 12  # then genre house, album: weird mix
    s.album_songs.create(album_id: a1.id)
    s.song_genres.create(genre_id: g2.id)
  else # genre classical, album classical
    s.album_songs.create(album_id: a3.id)
    s.song_genres.create(genre_id: g3.id)
  end
end