require "diary"
require "diary_entry"
require "todo_list"

describe "intergration" do 
  it "returns diary entries" do 
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new
    diary_entry_2 = DiaryEntry.new
    diary_entry_1.add("Today was the first day at my new job.")
    diary_entry_2.add("I'm going on holiday to Spain tomorrow!")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.all).to eq [diary_entry_1, diary_entry_2]
  end 

  it "returns the diary entries that can be read within the given reading time" do 
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new
    diary_entry_2 = DiaryEntry.new
    diary_entry_1.add("Today was the first day at my new job.")
    # diary_entry_2.add("I'm going on holiday to Spain tomorrow!")
    diary.add(diary_entry_1)
    # diary.add(diary_entry_2)
    result = diary.reading_time((8, 1))
    expect(result).to eq ["Today was the first day at my new job."] 
  end 

  it "returns a phone number from diary entries" do 
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new
    diary_entry_1.add("Today was the first day at my new job.")
    diary_entry_1.phone_number("07654321987")
    expect(diary.find_number("07654321987")).to eq ["07654321987"]
  end 

  it "returns two phone numbers from diary entries" do 
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new
    diary_entry_2 = DiaryEntry.new
    diary_entry_1.phone_number("07654321987")
    diary_entry_2.phone_number("01165432198")
    expect(diary.find_number("07654321987, 01165432198")).to eq ["07654321987", "01165432198"]
  end 

  context "when we ask diary to return phone number but there are no phone numbers available" do
    it "fails" do 
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new
      diary_entry_1.add("Today was the first day at my new job.")
      expect{diary.find_number("")}.to raise_error "No numbers can be found, please make sure that you add phone numbers to your diary"
    end 
  end

  context "when we ask diary to return phone number but the number from diary entry is not 11 digits" do
    it "fails" do 
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new
      diary_entry_1.phone_number("0123457")
      expect{diary.find_number("0123457")}.to raise_error "No numbers can be found, please make sure that you add phone numbers to your diary"
    end 
  end
end 