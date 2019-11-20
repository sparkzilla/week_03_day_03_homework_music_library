require('pry')
require_relative('models/albums')
require_relative('models/artists')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new(
  {
    'name' => "Pink Floyd",
  }
)
artist1.save()

artist2 = Artist.new(
  {
    'name' => "The Beatles",
  }
)
artist2.save()

artist3 = Artist.new(
  {
    'name' => "Madonna",
  }
)
artist3.save()


album1 = Album.new({
  'title' => 'Dark Side OF The Moon',
  'genre' => 'Rock',
  'artist_id' => artist1.id
})
album1.save()

album2 = Album.new({
  'title' => 'The Wall',
  'genre' => 'Rock',
  'artist_id' => artist1.id
})
album2.save()

album3 = Album.new({
  'title' => 'Animals',
  'genre' => 'Rock',
  'artist_id' => artist1.id
})
album3.save()

album4 = Album.new({
  'title' => 'Abbey Road',
  'genre' => 'Rock',
  'artist_id' => artist2.id
})
album4.save()

album5 = Album.new({
  'title' => 'Let It Be',
  'genre' => 'Rock',
  'artist_id' => artist2.id
})
album5.save()

album6 = Album.new({
  'title' => 'Ray of Light',
  'genre' => 'Pop',
  'artist_id' => artist3.id
})
album6.save()

album7 = Album.new({
  'title' => 'True Blue',
  'genre' => 'Pop',
  'artist_id' => artist3.id
})
album7.save()




binding.pry
nil
