class MP3Importer
  attr_accessor :path
  @files = []

  def initialize(file_path)
    @path = file_path
  end
  def files
    @files
  end
  def size
    @files.size
  end
  def import
    @files = Dir.entires(@path).select{|file| file.extname == ".mp3"}
  end
end
