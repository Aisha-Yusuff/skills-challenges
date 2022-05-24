require "playlist"

describe  Playlist do 
  it "Adds song to playlist array and returns the song" do 
    playlist = Playlist.new
    playlist.add("Happy - Pharrell Williams")
    expect(playlist.list).to eq "Happy - Pharrell Williams"
  end 

  it "Add another song to playlist and return all songs in the array" do 
    playlist = Playlist.new
    playlist.add("Happy - Pharrell Williams")
    playlist.add("Baby - Justin Bieber")
    expect(playlist.list).to eq "Happy - Pharrell Williams, Baby - Justin Bieber"
  end 
end 