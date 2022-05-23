def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    if !char.include?(" ")
    counter[char] += 1
    end
  end
  last_index = counter.to_a.length - 1
  counter.to_a.sort_by { |k, v| v }[last_index][0]
end


p get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"
