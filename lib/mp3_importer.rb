#parse filename and send to Song class
#should have path attributes in initialization
#two methods: files and import



class MP3Importer 
  
  
  
  attr_accessor :path #accpes a file path to parse mp3 files from
  
  def initialize(path) # accepts a file path to parse mp3 files from
    @path = path
  end
  
  def files
    @files = []
    file = Dir.entries(@path)
    file.each do |file|
      if file.include?("mp3")
        @files << file
      end
    end
    @files
  end
  
end