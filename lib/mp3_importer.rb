class MP3Importer
  attr_accessor :path, :files

  def initialize(file_path)
    @path = file_path
    @files = []
  end
  def import
    @files = Dir.entries(@path).select{|file| file.include?(".mp3")}
    puts "#{@path}"
  end
end
