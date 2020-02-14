class Song
  
  @@all = []
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  
  def self.all
    @@all 
  end
  
  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artistname = file.split(" - ")[0]
    song = self.new(song_name)
    song.artist_name= artistname
    song
  end
  
  def artist_name=(name) # helper method for self.new_by_filename
    self.artist= Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
  
  
end