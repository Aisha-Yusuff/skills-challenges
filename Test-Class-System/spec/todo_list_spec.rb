require 'todo_list'

RSpec.describe TodoList do 
  context "Initially" do 
    it "returns empty array for tasks" do 
      task = TodoList.new
      expect(task.incomplete).to be_empty
    end 

    it "returns empty array for completed" do
      task = TodoList.new 
      expect(task.complete).to eq [] # was [] before but wasnt working
    end 
  end 
end 