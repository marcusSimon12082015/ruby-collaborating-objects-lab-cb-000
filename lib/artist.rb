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
  def find_or_create_by_name(name)
    artist_result = nil
    if @@all.index(name).nil?
      artist = Artist.new(name)
      @@all << artist
      artist_result = artist
    else
      artist_result = @@all[@@all.index(name)]
    end
    artist_result
  end
end
