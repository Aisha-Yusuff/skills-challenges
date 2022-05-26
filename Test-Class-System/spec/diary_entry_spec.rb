require "diary_entry"

RSpec.describe DiaryEntry do 
  it "constructs" do
    diary_entry = DiaryEntry.new("my title", "my contents")
    expect(diary_entry.title).to eq "my title"
    expect(diary_entry.contents).to eq "my contents"
  end

  describe "#count_words" do 
    it "returns zero when there is an empty " do 
      diary_entry = DiaryEntry.new("my title", "") 
      expect(diary_entry.count_words).to eq 0
    end 

    it "counts one word in the contents and returns one" do 
      diary_entry = DiaryEntry.new("my title", "one") 
      expect(diary_entry.count_words).to eq 1
    end 
  
  describe "#count_words" do 
    it "counts and returns the words in the contents" do 
      diary_entry = DiaryEntry.new("my title", "one two three four") 
      expect(diary_entry.count_words).to eq 4 
    end 
  end 
  end 

  describe "#reading_time" do 
    it "fails if the wpm is 0" do 
      diary_entry = DiaryEntry.new("my_title", "my contents 1")
      expect{ diary_entry.reading_time(0) }.to raise_error "WPM must be postive."
    end 

    it "returns zero when there is an empty " do 
      diary_entry = DiaryEntry.new("my title", "") 
      expect(diary_entry.reading_time(2)).to eq 0
    end 

    it "return one if contents is  one word" do 
      diary_entry = DiaryEntry.new("my title", "one") 
      expect(diary_entry.reading_time(2)).to eq 1
    end 

    it "returns a reading time for the contents" do 
      diary_entry = DiaryEntry.new("my title", "one two three four five") 
      expect(diary_entry.reading_time(2)).to eq 3
    end 
  end 
end 