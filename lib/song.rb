require './lib/artist.rb'

class Song 
  attr_accessor :name
  attr_reader :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def artist=(artist_arg)
    @artist = artist_arg
  end
  
  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[0])
    song.artist = filename.split(" - ")[1]
    
  end
  
  def artist_name=(name)
    
  end
  
  
   
end