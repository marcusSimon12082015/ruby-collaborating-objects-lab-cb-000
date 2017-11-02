class Song
  attr_accessor :title, :artist

  def initialize(title)
    @title = title
  end
  def self.new_by_filename(filename)
    split_array = filename.split(" - ")
    song = Song.new(split_array[1])
    song.artist = Artist.find_or_create_by_name(split_array[0]).add_song(song)
    song.artist.print_songs
    song
  end
end
