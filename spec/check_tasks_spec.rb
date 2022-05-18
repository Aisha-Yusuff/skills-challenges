require "check_tasks"

describe "check_tasks method" do
  it "Returns 'no' when string does not contain #TODO" do
    result = check_tasks("Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, and Sunday")
    expect(result).to eq "No #TODO found in this text."
  end 

  it "Returns 'yes' when string contains #TODO" do
    result = check_tasks("Monday: #TODO 1.Go fo a walk, #TODO 2. Walk the dog, #TODO 3. Go to the gym. Tuesday: rest")
    expect(result).to eq "Yes, #TODO appears 3 times in this text."
  end
end