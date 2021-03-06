class Song

attr_accessor :name, :artist, :artist_name


  def initialize(name)
    @name = name
  end



  def self.new_by_filename(filename)
    song = Song.new(filename.split(" - ")[1]) #self?
    song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song.artist.add_song(song)
    song
  end



end
