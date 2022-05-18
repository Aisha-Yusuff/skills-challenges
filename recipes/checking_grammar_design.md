Checking Grammar Method Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.
checking_grammar(text) = true || false

method name : checking_grammar
Parameters : text - a string
return value : boolean

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# Strings with capital letter and correct punctuation
checking_grammar("Today is Saturday.") => true
checking_grammar("Thank you so much!") => true
checking_grammar("How are you?") => true

# Strings with no capital letter and correct punctuation
checking_grammar("today is Saturday.") => false
checking_grammar("thank you so much!") => false
checking_grammar("how are you?") => false

# Strings with capital letter and no punctuation 
checking_grammar("Today is Saturday") => false
checking_grammar("Thank you so much") => false
checking_grammar("How are you") => false

# Strings with no capital letter and no punctuation
checking_grammar("today is Saturday") => false


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

