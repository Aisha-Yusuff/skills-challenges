# A method called make_snippet that takes a string as an argument 
# If there are more than that it returns the first five words and then a '...' 

def make_snippet(str)
  string_array = []
  string_array = str.split(" ")

  if string_array.count < 5 && string_array.count == 5 
     first_five = string_array[0..4]
     return first_five.join(" ")

  elsif string_array.count > 5
     first_five = string_array[0..4]
     more_five = first_five.push("...")
     return more_five.join(" ")
  else
    return "fail"
  end 
end 
