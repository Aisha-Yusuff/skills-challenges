ToDo Task Class Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

> As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.


class Todo
  def initialize
  end

  def add(task) # task is a string representing  an instruction
  # Return nothing 
  end
  
  def list
    # Return a list of the tasks added as strings
  end 

  def complete(task) # task is a string representing a task to work complete 
    # return nothing
    # fails if the task doesn't exist
  end 
  end 


3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
todo_list = TodoList.new
todo_list.list # => []

# 2
todo_list = TodoList.new
todo_list.add("Wash the dishes")
todo_list.list # => ["Wash the dishes"]

# 3
todo_list = TodoList.new
todo_list.add("Wash the dishes")
todo_list.add("Wash the car")
todo_list.list # => ["Wash the dishes", "Wash the car"]

# 4 
todo_list = TodoList.new
todo_list.add("Wash the dishes")
todo_list.add("Wash the car")
todo_list.complete("Wash the car")
todo_list.list # => ["Wash the car"]

# 5 
todo_list = TodoList.new
todo_list.add("Wash the dishes")
todo_list.complete("Wash the car")
todo_list.list # => fails "No such task."

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
