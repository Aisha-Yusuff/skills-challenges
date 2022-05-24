require "todo_list"

RSpec.describe "TodoList method" do
  it " Returns an empty list if given no tasks" do 
    todo_list = TodoList.new
    expect(todo_list.list).to eq []
  end 

  it "adds a new task to array list" do 
    todo_list = TodoList.new
    todo_list.add("Wash the dishes")
    expect(todo_list.list).to eq ["Wash the dishes"]
  end 

  it "adds another to the  new task to array list" do 
    todo_list = TodoList.new
    todo_list.add("Wash the dishes")
    todo_list.add("Wash the car")
    expect(todo_list.list).to eq ["Wash the dishes", "Wash the car"]
  end

  it "Returns task that has been completed" do 
    todo_list = TodoList.new
    todo_list.add("Wash the dishes")
    todo_list.add("Wash the car")
    todo_list.complete("Wash the car")
    expect(todo_list.list).to eq ["Wash the dishes"]
  end

  it "When try to complete a non existent task it fails " do 
    todo_list = TodoList.new
    todo_list.add("Wash the dishes")
    expect{ todo_list.complete("Clean the floor") }.to raise_error "No such tasks"
  end
end   
