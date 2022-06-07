# ./lib/diary.rb
class Diary
  def initialize
    @entries = []
    @numbers = []
  end

  def add(diary_entry)
    @entries << diary_entry 
  end 

  def all
    return @entries
  end 

  def reading_time(8, 1)
    # return the entries that can be read within the users time 
    @entries.each do |entry|
      my_time = 1 # my_time is an interger, representing the minutes the user has to read text
      word_count = entry.length 
      minutes = wpm[1] # will this work???
      duration = word_count / minutes
      
      if duration <= my_time 
        return entry
      else 
        return "No diary entries can be read within the time limit you provided." 
      end 
    end 
  end



  def find_number(phone_number)
    # return a list of phone numbers found in diary entries
    @numbers << phone_number
    @numbers.each do |entry|
      phone = entry.to_s.scan(/\d{11}/)
      fail "No numbers can be found, please make sure that you add phone numbers to your diary" if phone.empty? 
      return phone
      end
   end 
end

