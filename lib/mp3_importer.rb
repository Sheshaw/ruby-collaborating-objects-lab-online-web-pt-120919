#parse filename and send to Song class
#should have path attributes in initialization
#two methods: files and import



class MP3Importer 
  
  
  
  attr_accessor :path #accpes a file path to parse mp3 files from
  
  def initialize(path) # accepts a file path to parse mp3 files from
    @path = path
  end
  
  def files # loads all the mp3 files in the path directory and normalizes the filename   # to just the mp3 filename with no path
    Dir.entries(path).select {|entry| entry.include?(".mp3")}
  end
  
  def import # imports the files into the library by creating songs from a filename
    files.each {|filename| Song.new_by_filename(filename)}
  end
  
end