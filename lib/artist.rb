class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  def songs
    @songs
  end
  def save
    @@all << self
  end
  def self.all
    @@all
  end
  def self.find_or_create_by_name(name)
    artist_result = nil
    find_index_result = @@all.find_index{|artist| artist.name == name}
    if find_index_result.nil?
      artist = Artist.new(name)
      @@all << artist
      artist_result = artist
    else
      artist_result = @@all[find_index_result]
    end
    artist_result
  end
  def print_songs
    @songs.each{|song| puts "#{song.name}"}
  end
end
