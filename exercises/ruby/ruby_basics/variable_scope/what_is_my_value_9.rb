# Q : What will the following code print, and why?
# A : The integer 7 will print.
#   : 
# N : The concept of shadowing:
#   : There are 2 different local variables in 2 different scopes, with the same name:
#   :   - Local variable a initialized outside of the each method
#   :   - Local variable a initialized inside of the each method
#   : When re-assigning the value of variable a occurs in line 21, inner variable a gets re-assigned. 
#   : The inner variable is within the scope of where re-assignment occurs,
#   : so the inner variable "shadows" the outter variable, making the outter variable inaccessible.
#   : This leaves the outter variable unaffected, while the inner variable is re-assigned a new value.
#   :
#   : Since inner variable a initialized inside the each method is only visible within its block,
#   : the puts method invoked outside of the each method is passed outter variable a as its argument. 


a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a