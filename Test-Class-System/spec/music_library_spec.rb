require 'music_library'

RSpec.describe MusicLibrary do 
  it "At the start music library should be empty" do
    music_library = MusicLibrary.new 
    expect(music_library.all).to eq []
  end 

  it " At the start it responds to searches with an empty list" do 
    music_library = MusicLibrary.new 
    expect(music_library.search_by_title("aisha")).to eq []
  end 
end 