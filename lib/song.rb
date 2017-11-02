class Song
  attr_accessor :title, :artist

  def initialize(title)
    @title = title
  end
  def self.new_by_filename(filename)
    split_array = filename.split(" - ")
    song = Song.new(split_array[1])
    song.artist = Artist.new(split_array[0]).add_song(song)
    song
  end
end
