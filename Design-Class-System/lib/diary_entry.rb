class DiaryEntry
  def initialize
    @entry = ""
    @phone = ""
    @entries = []
  end 

  def add(entry)
    @entry = entry 
    @entries << @entry
  end

  def all
    # returns the array of diary entries (+ phone number)
    return @entries.join(", ")
  end 

  def phone_number(phone) #phone is a string consisting of 11-digits
    @phone = phone 
    end
  end 