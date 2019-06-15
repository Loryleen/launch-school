# Q : What will the following code print, and why?
# A : The integer 3 will be printed.
#   :
#   : With method definitions, local variable scope is restricted to the method definition itself.
#   : In contrast, a method invocation with a block has more open scoping rules.
#   : The block can use and modify local variables that are defined outside the block.
#   :
#   : At first, a is initialized to reference the integer 7. 
#   : When the each method is invoked on the array, we pass each element into the block, which then becomes the new value for a. 
#   : We set a to have the value of 1, 2, and finally 3.
#   : When puts is called, the most recent value of a was 3.


a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a