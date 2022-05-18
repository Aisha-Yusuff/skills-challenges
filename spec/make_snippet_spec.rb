require 'make_snippet'

RSpec.describe "make_snippet method " do
  it "return the first five words of a string" do
    result = make_snippet("hello my name is aisha y")
    expect(result).to eq "hello my name is aisha ..."
  end 
end