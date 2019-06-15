# Q : What will the following code print? Why?
# A : The following will print: 
#   :'Dinner'
#   :'Breakfast'
#   : 
#   : Executing meal prints 'Dinner' and returns 'Breakfast'.
#   : Two values are printed because puts is executed twice: 
#   :   1) Within the method body
#   :   2) Outside of the method body to display the returned value.
#   :
#   : Without the return statement, 
#   : although puts displays 'Dinner', the return value of puts is nil.


def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal