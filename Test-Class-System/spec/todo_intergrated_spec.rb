require "todo_list"
require "todo"

RSpec.describe "integrated" do 
  context "When we add the first todo task to todo list" do 
    it "it returns one incomplete todo task" do 
      list = TodoList.new
      todo_1 = Todo.new("First Task")
      list.add(todo_1)
      expect(list.incomplete).to eq [todo_1]
    end 

    # it "it returns empty array as no tasks have been marked complete" do 
    #   list = TodoList.new
    #   todo_1 = Todo.new("First task")
    #   list.add(todo_1)
    #   expect(list.complete).to eq ""
    # end
  end 

  context "When we add two todo task to the todo list" do 
    it "it returns two incomplete todo tasks" do 
      list = TodoList.new
      todo_1 = Todo.new("First task")
      todo_2 = Todo.new("Second task")
      list.add(todo_1)
      list.add(todo_2)
      expect(list.incomplete).to eq [todo_1, todo_2]
    end 

    it "it returns 0 complete todo tasks" do 
      list = TodoList.new
      todo_1 = Todo.new("First task")
      todo_2 = Todo.new("Second task")
      list.add(todo_1)
      list.add(todo_2)
      expect(list.complete).to eq []
    end 
  end 

  context "When we add a todo task that has been marked done" do 
    it "it returns the todo task as complete" do 
      list = TodoList.new
      todo = Todo.new("First task")
      list.add(todo)
      todo.mark_done!
      expect(list.complete).to eq [todo]
    end 

    it "it returns an empty incomplete array as all the task have been completed" do 
      list = TodoList.new
      todo = Todo.new("First task")
      list.add(todo)
      todo.mark_done!
      expect(list.incomplete).to eq []
    end 
  end

    context "when one task is complete and one task is incomplete" do 
      it "it returns the complete task " do 
        list = TodoList.new
        todo_1 = Todo.new("First task")
        todo_2 = Todo.new("Second task")
        list.add(todo_1)
        list.add(todo_2)
        todo_1.mark_done!
        expect(list.complete).to eq [todo_1]
    end 

    it "it returns the incomplete task " do 
      list = TodoList.new
      todo_1 = Todo.new("First task")
      todo_2 = Todo.new("Second task")
      list.add(todo_1)
      list.add(todo_2)
      todo_1.mark_done!
      expect(list.incomplete).to eq [todo_2]
    end 
  end
  
  context "When we give up our tasks" do 
    it "it returns all tasks as complete" do 
      list = TodoList.new
      todo_1 = Todo.new("First task")
      todo_2 = Todo.new("Second task")
      list.add(todo_1)
      list.add(todo_2)
      list.give_up!
      expect(list.complete).to eq [todo_1, todo_2]
    end 

    it "returns no task as incomplete" do
      list = TodoList.new
      todo_1 = Todo.new("First task")
      todo_2 = Todo.new("Second task")
      list.add(todo_1)
      list.add(todo_2)
      list.give_up!
      list.incomplete => []
    end 
  end 
end 