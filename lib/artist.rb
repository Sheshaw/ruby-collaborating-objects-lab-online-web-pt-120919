class Artist
  
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self # pushes the new instancec of Artist into @all empty array
  end
  
  def add_song(song) # pushes the arguement of song into the instance variable @songs
    songs << song
  end
  
  def songs
    @songs
  end
  
  def save
    @@all << self
    self # return the instance
  end
  
  
  def self.all # return all existing Artist instances
    @@all
  end
  
  def self.find_or_create_by_name(name)# find the artist instance that has a # name
    self.all.find {|artist| artist.name == name ||} self.new(name).save 
    end
  end
  
  def print_songs
    @songs.each do 
      |song|
      puts song.name
    end
  end
  
end