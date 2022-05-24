Single-Class Programs Design Recipe
1. Describe the Problem
Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface
The interface of a class includes:

The name of the class.
The design of its initializer and the parameters it takes.
The design of its public methods, including:
Their names and purposes
What parameters they take and the data types.
What they return and that data type
Any other side effects they might have.
Steps 3 and 4 then operate as a cycle.

class Playlist

  def initialize
  @playlist = [] # empty array to store all the listened to songs
  end

  def add(trackname)
# trackname is a string, the name of the song listened to 
# Return nothing
# add trackname to empty array
  end 

  def list
  # Return all songs listened to in a list
  # convert array to string
  end 
end 

3. Create Examples as Tests
These are examples of the class being used with different initializer arguments, method calls, and how it should behave.

For complex challenges you might want to come up with a list of examples first and then test-drive them one by one. For simpler ones you might just dive straight into writing a test for the first example you want to address.


# 1 Add a song to the playlist
playlist = Playlist.new
playlist.add("Happy - Pharrell Williams")
playlist.list => "Happy - Pharrell Williams"

# 2 Add another song to the playlist
playlist = Playlist.new
playlist.add("Happy - Pharrell Williams")
playlist.add("Baby - Justin Bieber")
playlist.list => "Happy - Pharrell Williams", "Baby - Justin Bieber"

# 3 If trackname is an empty string it fails and ask user to input full name of the song
playlist = Playlist.new
playlist.add("")
playlist.list => fail "This playlist is empty. Please add songs that you've listened to."


4. Implement the Behaviour
For each example you create as a test, implement the behaviour that allows the class to behave according to your example.

At this point you may wish to apply small-step test-driving to manage the complexity. This means you only write the minimum lines of the example to get the test to fail (red), then make it pass (green) and refactor, before adding another line to the test until it fails, then continue.

Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.