require 'checking_grammar'

describe "checking_grammar method" do
  it "returns true if string starts with capital letter and ends with '.' " do
    result = checking_grammar("Today is Saturday.") 
    expect(result).to eq true
end

it "returns true if string starts with capital letter and ends with '!' " do
  result = checking_grammar("Thank you so much!") 
  expect(result).to eq true
end

it "returns false if string starts with lowercase letter and end with no punctuation" do
  result = checking_grammar("today is Saturday")
  expect(result).to eq false
end

it "returns true if string starts with capital letter and ends with '?' " do
  result = checking_grammar("How are you?") 
  expect(result).to eq true
end

it "returns false if string starts with a capital letter and ends with no punctuation" do
  result = checking_grammar("Today is Saturday")
  expect(result).to eq false
end  

it "return false if string starts with lower case letter and ends with punctuation"  do 
  result = checking_grammar("how are you?")
  expect(result).to eq false
end 
end