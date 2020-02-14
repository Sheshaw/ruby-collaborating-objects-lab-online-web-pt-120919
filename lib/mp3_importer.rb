#parse filename and send to Song class
#should have path attributes in initialization
#two methods: files and import



class MP3Importer 
  
  
  
  attr_accessor :path #accpes a file path to parse mp3 files from
  
  def initialize(path) # accepts a file path to parse mp3 files from
    @path = path
  end
  
  def files
    Dir.entries(path).select {|entry| entry.include?(".mp3")}
  end
  
end