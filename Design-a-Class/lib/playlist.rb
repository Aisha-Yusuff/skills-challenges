class Playlist
  def initialize
    @playlist = []
  end

  def add(trackname)
    @playlist << trackname 
  end 

  def list
    playlist_string = @playlist.join(", ")
    return playlist_string
  end 
end 