To Do Class Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep see my progress
I want to see all of my completed tasks

As a user
So that I can keep see what I still need to do 
I want to see all of my incomplete tasks

As a user
So that I can move to a different project 
I want to mark all of my tasks as complete

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

class TodoList
  def initialize
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
  end

  def incomplete
    # Returns all non-done todos
  end

  def complete
    # Returns all complete todos
  end

  def give_up!
    # Marks all todos as complete
  end
end

class Todo
  def initialize(task) # task is a string
    # ...
  end

  def task
    # Returns the task as a string
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end


3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

_Unit tests for Todo_ 
# 1 - done
todo = Todo.new("First Task")
todo.task # => "First Task" 

# 2 - done
todo = Todo.new("First Task")
todo.mark_done! 
todo.done? # => true 

# 3 - done 
todo = Todo.new("First Task")
todo.done? # => false

# 4
todo = Todo.new("")
todo.done? # => error  "Task is empty. Please describe the task"

_Unit tests for TodoList_
# 1 - done
list = TodoList.new
list.incomplete => empty

# 2
list = TodoList.new
list.complete => empty


_Integration tests_

# 1 - done
list = TodoList.new
todo_1 = Todo.new("First task")
list.add(todo)
list.incomplete => todo_1

# 2 - done
list = TodoList.new
todo_1 = Todo.new("First task")
list.add(todo_1)
list.complete => []

#  - done
list = TodoList.new
todo_1 = Todo.new("First task")
todo_2 = Todo.new("Second task")
list.add(todo_1)
list.add(todo_2)
list.incomplete => [todo_1, todo_2]

# 4 - done
list = TodoList.new
todo_1 = Todo.new("First task")
todo_2 = Todo.new("Second task")
list.add(todo_1)
list.add(todo_2)
list.complete => []

# 5 - done 
list = TodoList.new
todo = Todo.new("First task")
list.add(todo)
todo.mark_done!
list.complete => [todo]

# 6 - done 
list = TodoList.new
todo = Todo.new("First task")
list.add(todo)
todo.mark_done!
list.incomplete => []

# 7 - done
list = TodoList.new
todo_1 = Todo.new("First task")
todo_2 = Todo.new("Second task")
list.add(todo_1)
list.add(todo_2)
todo_1.mark_done!
list.complete => [todo_1]


# 8 - done
list = TodoList.new
todo_1 = Todo.new("First task")
todo_2 = Todo.new("Second task")
list.add(todo_1)
list.add(todo_2)
todo_1.mark_done!
list.incomplete => [todo_2]

# 9 - done
list = TodoList.new
todo_1 = Todo.new("First task")
todo_2 = Todo.new("Second task")
list.add(todo_1)
list.add(todo_2)
list.give_up!
list.complete => [todo_1, todo_2]

# 10
list = TodoList.new
todo_1 = Todo.new("First task")
todo_2 = Todo.new("Second task")
list.add(todo_1)
list.add(todo_2)
list.give_up!
list.incomplete => []


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.