require "todo"

RSpec.describe Todo do 
  it "constructs" do 
    todo = Todo.new("First Task")
    expect(todo.task).to eq "First Task"
  end 

  it "initially returns false for done as task is not completed" do 
    todo = Todo.new("First Task")
    expect(todo.done?).to eq false
  end 

  it "marks todo task as done and returns true" do 
    todo = Todo.new("First Task")
    todo.mark_done! 
    expect(todo.done?).to eq true 
  end 
end 