# Debugg this code in order to get the intended output: 
# def say_hello(name)
#   return "hello #(name)"
# end

# # Intended output:
# #
# # > say_hello("kay")
# # => "hello kay"

def say_hello(name)
  return "hello #{name}"
end 

puts say_hello("kay")
