require 'music_library'
require 'track'

RSpec.describe "intergration" do 
  # Integration test - testing if two classes can work together in a system to preform a given job 
  context "When we add a track to the library" do 
    it "it comes back in the list " do 
      music_library = MusicLibrary.new
      track_1 = Track.new("my_title_1", "my_artist_1")
      track_2 = Track.new("my_title_2", "my_artist_2")
      music_library.add(track_1)
      music_library.add(track_2)
      expect(music_library.all).to eq [track_1, track_2]
    end 
  end 

  context "When tracks have been added" do
    it "searches for those track by title" do 
      music_library = MusicLibrary.new
      track_1 = Track.new("my_title_1", "my_artist_1")
      track_2 = Track.new("my_title_2", "my_artist_2")
      music_library.add(track_1)
      music_library.add(track_2)
      result = music_library.search_by_title("my_title_2")
      expect(result).to eq [track_2]
    end 

    it "searches for those track by substring of title" do 
      music_library = MusicLibrary.new
      track_1 = Track.new("my_title_1", "my_artist_1")
      track_2 = Track.new("my_title_2", "my_artist_2")
      music_library.add(track_1)
      music_library.add(track_2)
      result = music_library.search_by_title("title_2")
      expect(result).to eq [track_2]
    end 

    context "When there are no track that match keyword" do
      it "it returns an empty list when searching" do 
        music_library = MusicLibrary.new
        track_1 = Track.new("my_title_1", "my_artist_1")
        music_library.add(track_1)
        result = music_library.search_by_title("aisha")
        expect(result).to eq []
      end 
    end 
  end
end