# Q : What will the following code print? Why?
# A : The following will print:
#   : 'Dinner'
#   : nil
#   :
#   : A method always returns a single object.
#   :
#   : When there is no return statement, the value from 
#   : the last evaluated statement will be returned. 
#   : In this case, the last evaluated statement is a puts statement.
#   : puts statements always return nil.
#   :
#   : Two values are printed:
#   :   1) : Within the meal method, puts prints a string.
#   :   2) : Outside the meal method, p displays meal's return value.
#   :      : p is used to make nil visible in the output.


def meal
  'Dinner'
  puts 'Dinner'
end

p meal