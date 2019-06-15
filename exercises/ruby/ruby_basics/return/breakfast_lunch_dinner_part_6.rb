# Q : What will following code print? Why?
# A : 'Breakfast' will print when calling the meal method.
#   :
#   : The first line in the meal method is a return statement.
#   : Since the return statement immediately causes the program to
#   : exit the method and return its value, 
#   : any code following the return statement will not be executed.


def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal