# Q : What will the following code print and why?
# A : The value of variable a is 7.
#   : Although a is invoked by the my_value method in line 12, this method does not mutate the value of a.
#   : my_value method
#       : The my_value method is passed an argument, a. 
#       : my_value's parameter, b, references the same object as variable a.  
#       : b is a local variable that is only accessible within the my_value method. 
#       : Within my_value, b is re-assigned a new object (from: b = b + 10).
#       : b now points to an entirely different object than a.
# N : In Ruby, all numbers are immutable. 
#   : There is no way that the initialized value of a could have been altered within the my_value method. 


a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a