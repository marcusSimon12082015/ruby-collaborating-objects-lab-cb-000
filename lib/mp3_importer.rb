class MP3Importer
  attr_accessor :path
  @files = []

  def initialize(file_path)
    @path = file_path
  end
  def files
    @files = Dir.entires(@path).select{|file| file.extname == ".mp3"}
  end
end
