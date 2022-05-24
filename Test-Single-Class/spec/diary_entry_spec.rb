require "diary_entry"

describe DiaryEntry do 
  it "constructs" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq "my_title"
    expect(diary_entry.contents).to eq "my_contents"
  end 

  describe "#count_words" do
    it "Returns the number of words in the contents as an integer" do
     diary_entry = DiaryEntry.new("my_title", "here is the contents")
     expect(diary_entry.count_words).to eq 4
    end 

  it "Returns 0 when contents is empty" do
    diary_entry = DiaryEntry.new("my_title", "")
    expect(diary_entry.count_words).to eq 0
   end 
 end

 describe "#reading_time" do
  context "given a wpm of (200)" do
    it "returns the ceiling of the number of minutes it takes the reader to read contents" do
     diary_entry = DiaryEntry.new("my_title", "one " * 550)
     expect(diary_entry.reading_time(200)).to eq 3
   end 
  end

  context "given a wpm of (0)" do 
    it "fails" do 
      diary_entry = DiaryEntry.new("my title", "one two three")
      expect { diary_entry.reading_time(0) }.to raise_error "Reading speed must be above zero"
    end 
  end
 end

 # Returns a string with a chunk of the contents that the user could read
 # in the given number of minutes.
 # If called again, `reading_chunk` should return the next chunk, skipping
 # what has already been read, until the contents is fully read.
 # The next call after that it should restart from the beginning.
 describe "#reading_chunk" do 
  context "with a contents readable withing the given minutes" do 
   it "Returns the full contents" do 
    diary_entry = DiaryEntry.new( "my title", "one two three")
    chunk = diary_entry.reading_chunk(200, 1)
    expect(chunk).to eq "one two three"
   end
  end 

  context "given a wpm of (0)" do 
    it "fails" do 
      diary_entry = DiaryEntry.new("my title", "one two three")
      expect { diary_entry.reading_chunk(0, 5) }.to raise_error "Reading speed must be above zero"
    end 
  end

  context "with a contents unreadle within one time " do 
    it "Returns the full contents" do 
      diary_entry = DiaryEntry.new( "my title", "one two three")
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "one two"
     end

    it "returns the next chunk, the next we are asked" do
      diary_entry = DiaryEntry.new("my title", "one two three")
      diary_entry.reading_chunk(2, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "three"
    end

    it "restarts after reading the whole contents" do
      diary_entry = DiaryEntry.new("my title", "one two three")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(2, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "one two"
    end

    it "restarts if it finishes exactly on the end of the content" do
      diary_entry = DiaryEntry.new("my title", "one two three")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(1, 1)
      chunk = diary_entry.reading_chunk(2, 1)
      expect(chunk).to eq "one two"
    end
  end 
end
end  