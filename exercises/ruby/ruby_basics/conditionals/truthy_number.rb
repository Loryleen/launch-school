# Q : What will the following code print? Why?
# A : "My favorite number is 7."
#   : Every expression evaluates to true when used in a condition.
#   : The only exceptions to this is false and nil.

number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end