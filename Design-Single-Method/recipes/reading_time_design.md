Reading Time Method Design Recipe1. 
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

calculate_time(tex) = minutes
time : integer
reading_time : integer (minutes)

# EXAMPLE

# `extract_upper` extracts uppercase words from a list of words
uppercase_words = extract_uppercase(mixed_words)

mixed_words: a string (e.g. "hello WORLD")
uppercase_words: a list of strings (e.g. ["WORLD"])

# The method doesn't print anything or have any other side-effects
3. Create Examples as Tests
Make a list of examples of what the method will take and return.
calculate_time("") => 0
calculate_time("one") => 1 (ceil)
calculate_time("10 words") => (decimal).ceil to get integer
calculate_time(two_hundred_words) => 1 
<!-- calculate_time(") => 10
calculate_time(1400) => 700
calculate_time(-400) throws an error, return string to user
calcuate_time(950) => (4.75) 5
calculate_time("hello") throws an error  -->


# EXAMPLE

extract_uppercase("hello WORLD") => ["WORLD"]
extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
extract_uppercase("hello world") => []
extract_uppercase("hello WoRLD") => []
extract_uppercase("hello WORLD!") => ["WORLD"]
extract_uppercase("") => []
extract_uppercase(nil) throws an error
Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.