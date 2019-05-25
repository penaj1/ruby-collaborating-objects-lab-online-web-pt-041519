class Artist 
  
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end

  def save
    @@all << self
  end
 
  def add_song(song)
    @songs << song
  end
  
  def self.find_or_create_by_name(name)
    artist = @@all.find {|artist| artist.name == name}
    if artist == nil
      artist = Artist.new(name)
      artist.save
    end
    artist
  end

  def print_songs()
    puts @songs.collect{|x| x.name}
  end
  
end