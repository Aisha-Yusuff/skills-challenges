require "grammar_stats"

describe GrammarStats do
  it "returns true if text starts with a capital letter and end with '.' " do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("It's a sunny day.")).to eq true
  end

  it "returns true if text starts with a capital letter and end with '!' " do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("It's a good day!")).to eq true
  end

  it "returns true if text starts with a capital letter and end with '?' " do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Is it raining today?")).to eq true
  end

  it "returns false if text starts with a lowercase letter" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("it's a good day!")).to eq false
  end

  it "returns false if text does not end with punctuation" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Is it raining today")).to eq false
  end

  it "returns false if text starts with a lowercase letter and does not end with punctuation" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("is it raining today")).to eq false
  end

  it "returns the percentage of good sentences that are checked" do
    grammar_stats = GrammarStats.new
    grammar_stats.check("It's great")
    grammar_stats.check("it's good")
    grammar_stats.check("It's good.")
    grammar_stats.check("It's bad.")
    expect(grammar_stats.percentage_good).to eq "50%"
end 

it "returns 0% when there are no good sentences in the sentences that have been checked" do
  grammar_stats = GrammarStats.new
  grammar_stats.check("it's great")
  grammar_stats.check("it's good")
  grammar_stats.check("It's okay")
  grammar_stats.check("It's really bad")
  expect(grammar_stats.percentage_good).to eq "0%"
end 
end 