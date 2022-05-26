# File: lib/todo_list.rb
require "./lib/todo.rb"

class TodoList
  def initialize
    @tasks = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @tasks << todo
  end

  def incomplete
    # Returns all non-done todos 
      return @tasks.reject(&:done?)
  end

  def complete
    # Returns all complete todos
    completed = @tasks.select(&:done?)
    return completed
  end

  def give_up!
    # Marks all todos as complete
     return @tasks.select(&:mark_done!) 
  end
end



