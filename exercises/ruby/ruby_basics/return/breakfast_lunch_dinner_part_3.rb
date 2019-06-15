# Q : What will the following code print?
# A : 'Breakfast' will print when calling the meal method.
#   :
#   : A method always returns a single object.
#   : 
#   : A method's return value can be determined by executing
#   : a return statement which will immediately exit the method
#   : and return the method's current value.
#   : No line following the return statement will be executed.


def meal
  return 'Breakfast'
  'Dinner'
end

puts meal