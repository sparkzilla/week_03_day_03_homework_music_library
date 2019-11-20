require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/albums')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class AlbumTest < MiniTest::Test

  def test_can_create_new_album
    album_details = {
      'title' => 'Back In Black',
      'genre' => 'Rock'
    }

    new_album = Album.new(album_details)
    assert_equal('Back In Black', new_album.title)
  end

end
