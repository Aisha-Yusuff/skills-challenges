Diary Multi-Class Planned Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

(So set reading speed = wpm 
Then work out a duration for each entry
If the duration is lower than the time the user has to read return the diary entries
But entries total duration must not be higher than the time the user has to read)

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

┌────────────────────────────┐
│ MusicPlayer                │
│                            │
│ - add(track)               │
│ - all                      │
│ - search_by_title(keyword) │
│   => [tracks...]           │
└───────────┬────────────────┘
            │
            │ owns a list of
            ▼
┌─────────────────────────┐
│ Track(title, artist)    │
│                         │
│ - title                 │
│ - artist                │
│ - format                │
│   => "TITLE by ARTIST"  │
└─────────────────────────┘
Also design the interface of each class in more detail.

--------------------------------------------------------------------------------------
class Diary
def initialize
@entries = []
@tasks = []
end

def add(diary_entry) #diary_entry is an instance from Diary Entry class (test)
# adds a diary entry to the diary
@entries << diary_entry 
end 

def all (test)
# returns all diary entries as a string
return @entries.split(", ")
end 

def reading_time(my_time, wpm(2, 1)) (test)
# return the entries that can be read within the users time 
@entries.each do |entry|
my_time = X # x is an interger, representing the minutes the user has to read text
minutes = wpm[0] # will this work???
word_count = entry.length 
duration = word_count / minutes

<!-- if duration <= my_time 
return entry
else 
return "No diary entries can be read within the time limit you provided." 
end  -->
end 
end

def find_number (test)
 # return a list of phone numbers found in diary entries
 @entries.each do |entry|
 number = entry.scan(/ \d{11} /)
 fail "No numbers can be found, please make sure that you add phone numbers to your diary" if number.nil? 
 return number
 end
end 

def track_tasks(todo_list) #todo_list is an instance from TodoList class (test)
# returns todo tasks
@tasks << todo_list
return @tasks.split(", ")
end
end


Class DiaryEntry
def initialize
@entry = ""
@phone = ""
@entries = []
end

def add(entry) #entry is a string 
# adds a diary entry 
@entry = entry 
end

def phone_number(phone) #phone is a string consisting of 11-digit numbers, begining with 0
# add a phone number to phone variable
@phone = phone 
end

def join
# joins an entry and phone number together
contact = "#{@entry} + phone number: #{phone}
@entries << contact
end 

def all
# returns the array of diary entries (+ phone number)
return @entries 
end 
end 

Class TodoList
def initialize
@tasks = []
end

def add(todo) # todo is a string 
# adds a todo to task array
@tasks << todo
end

def all
# returns the task array
return @tasks
end
end

end
3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.
# 1 - return diary entries 
<!-- diary = Diary.new
diary_entry_1 = DiaryEntry.new
diary_entry_2 = DiaryEntry.new
diary_entry_1.add("Today was the first day at my new job.")
diary_entry_2.add("I'm going on holiday to Spain tomorrow!")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.all => [diary_entry_1, diary_entry_2] -->

# 2 - reading time return entries that can be read in the given time
diary = Diary.new
diary_entry_1 = DiaryEntry.new
diary_entry_2 = DiaryEntry.new
diary_entry_1.add("Today was the first day at my new job.")
diary_entry_2.add("I'm going on holiday to Spain tomorrow!")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
result = diary.reading_time(2, wpm(2, 1)
result => ["Today was the first day at my new job.", "I'm going on holiday to Spain tomorrow!"]

# 3 - Return todo tasks 
diary = Diary.new
task_1 = TodoList.new
task_2 = TodoList.new
task_1.add("Wash the car")
task_2.add("Walk the dog")
diary.add(task_1)
diary.add(task_2)
result = diary.track_tasks(task_2)
result => ["Wash the car", "Walk the dog"]

<!-- # 4 - Return phone numbers from diary entries 
diary = Diary.new
diary_entry_1 = DiaryEntry.new
diary_entry_1.add("Today was the first day at my new job.")
diary_entry_1.phone_number("07654321987")
diary_entry_1.join
diary.add(diary_entry_1)
diary.find_number => ["07654321987"]

# 5 - fail if cant find any numbers in diary entries 
iary = Diary.new
diary_entry_1 = DiaryEntry.new
diary_entry_1.add("Today was the first day at my new job.")
diary_entry_1.phone_number("321987")
diary_entry_1.join
diary.add(diary_entry_1)
diary.find_number => raise_error "No numbers can be found, please make sure that you add phone numbers to your diary"  -->


4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# Diary Entry

<!-- # 1 - initially
entry = DiaryEntry.new
entry.all => [] -->

<!-- # 2 - add a entry return one entry
entry = DiaryEntry.new
entry.add("I'm going on holiday to Spain tomorrow!")
entry.all => ["I'm going on holiday to Spain tomorrow!"] -->

# 3 - add two entries and return all entries 
entry = DiaryEntry.new
entry.add("I'm going on holiday to Spain tomorrow!")
entry.add("Dear, Diary...")
entry.all => "I'm going on holiday to Spain tomorrow!", Dear, Diary..."

# 4 - add phone number to entry and return full entry
entry = DiaryEntry.new
entry.add("I'm going on holiday to Spain tomorrow!")
entry.phone_number("01234567899")
entry.all => "I'm going on holiday to Spain tomorrow!"


# TodoList

# 1 - initially
todo = TodoList.new
todo.all => []

# 2 - adds a task to the todo list
todo = TodoList.new
todo.add("Wash the car")
todo.all => ["Wash the car"]


# EXAMPLE

# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
Encode each example as a test. You can add to the above list as you go.

5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

