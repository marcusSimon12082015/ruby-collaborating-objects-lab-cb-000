class MP3Importer
  attr_accessor :path, :files
  @@all = []

  def initialize(file_path)
    @path = file_path
    @files = Dir.entries(@path).select{|file| file.include?(".mp3")}
  end
  def import
    @@all = @files.uniq
  end
end
