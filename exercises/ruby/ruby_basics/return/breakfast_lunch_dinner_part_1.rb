# Q : What will the following code print? Why?
# A : 'Breakfast' will print when calling the meal method.
#   :
#   : A method always returns a single object.
#   : 
#   : A method's return value can be determined by executing
#   : a return statement which will immediately exit the method
#   : and return the method's current value.
#   : No line following the return statement will be executed.
#   :
#   : If there is no return statement, the value fron 
#   : the last evaluated statement will be returned.
#   : This often refers to the last line of the method body.


def meal 
  return 'Breakfast'
end

puts meal