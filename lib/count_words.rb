# A method called count_words that takes a string as an argument and returns the number of words in that string.

def count_words(str)
  words_array = str.split(" ") 
  word_count = words_array.count
  return word_count
end 