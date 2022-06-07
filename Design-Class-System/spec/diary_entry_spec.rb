require "diary_entry"

describe DiaryEntry do 
  context "initially" do 
    it "it returns an empty entries string" do 
      entry = DiaryEntry.new
      expect(entry.all).to eq ""
    end
  end 

  context "When we have one diary entry" do 
    it "it returns the entry" do 
      entry = DiaryEntry.new
      entry.add("I'm going on holiday to Spain tomorrow!")
      expect(entry.all).to eq "I'm going on holiday to Spain tomorrow!"
    end 
  end 

  context "When we have two diary entries" do 
    it "it returns both entries" do
      entry = DiaryEntry.new
      entry.add("Dear, Diary...")
      entry.add("I'm going on holiday to Spain tomorrow!")
      expect(entry.all).to eq "Dear, Diary..., I'm going on holiday to Spain tomorrow!"
    end 
  end 
end 