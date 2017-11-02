class Song
  attr_accessor :title, :artist

  def initialize(title)
    @title = title
  end
  def self.new_by_filename(filename)
    split_array = filename.split(" - ")
    song = Song.new(split_array[1])
    #puts "Song --> #{song.title}"
    song.artist = Artist.find_or_create_by_name(split_array[0])
    song.artist.add_song(song)
    #puts "Artist --> #{song.artist.name}"
    Artist.all.each{|artist| puts "#{artist.name}"}
    song
  end
end
