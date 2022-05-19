require 'reading_time'

describe "reading_time method" do 
  it "returns zero when there are no words in text" do 
    result = calculate_time(" ")
    expect(result).to eq 0
  end 

  it "returns integer when text has under 200 words" do
    result = calculate_time("one")
    expect(result).to eq 1
  end 

  it "returns one minute when 200 words in text" do 
  result = calculate_time("one" * 200)
  expect(result).to eq 1
  end 

  it "returns two minutes when 300 words in text" do
    result = calculate_time("one" * 300)
    expect(result).to eq 1
  end
end 