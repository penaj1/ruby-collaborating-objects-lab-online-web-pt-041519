class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @artist = artist
  end
   
  def self.new_by_filename(filename)
    
    artist_name = filename.split(" - ")[0]
    song_name = filename.split("-")[1].strip
    song = Song.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    
    
    return song
  end

end