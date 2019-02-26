 class Genre
   
  extend Concerns::Findable
  
 attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def self.all
    @@all 
  end 
  
 def self.destroy_all
    @@all.clear
  end 
 
 def save 
   @@all << self 
 end 
 
 def artists 
  artist = songs.collect {|song| song.artist}
  artist.uniq 
 end 
 
 def self.create(name)
   genre = self.new(name)
   genre.save
   genre 
 end 
 
 def artist
   Song.all.collect do |song|
     song.artist
  end 
 end 
 
end