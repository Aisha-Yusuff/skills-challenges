Check Tasks Method Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

check_tasks(text) = Yes, #TODO appears X times in this text.
check_tasks(text) =  No #TODO found in this text.

- Method name: check_tasks
- Parameter: text
- Return value : string, string interpolation
eg. "Yes, it appear #{count} times."

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

check_tasks("Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, and Sunday") => "No #TODO found in this text."

check_tasks("Monday: #TODO 1.Go fo a walk, #TODO 2. Walk the dog, #TODO 3. Go to the gym. Tuesday: rest") => "Yes, #TODO appears 3 times in this text."

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

