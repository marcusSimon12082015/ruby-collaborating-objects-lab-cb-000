class MP3Importer
  attr_accessor :path, :files

  def initialize(file_path)
    @path = file_path
    @files = []
    import
  end
  def import
    @files = Dir.entries(@path).select{|file| file.include?(".mp3")}
  end
end
