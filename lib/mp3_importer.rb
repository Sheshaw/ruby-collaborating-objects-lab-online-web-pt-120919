#parse filename and send to Song class
#should have path attributes in initialization
#two methods: files and import



class MP3Importer 
  
  
  @@all = []
  
  attr_accessor :path #accpes a file path to parse mp3 files from
  
  def initialize(path) # accepts a file path to parse mp3 files from
    @path = path
    @@all << path
  end
  
  def files
  end
  
end