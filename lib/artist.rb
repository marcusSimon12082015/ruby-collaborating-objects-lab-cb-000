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
    if @@all.index(name).nil?
      artist = Artist.new(name)
      @@all << artist
    else
      @@all[@@all.index(name)]
    end
  end
end
