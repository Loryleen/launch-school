# Q : What will the following code print, and why?
# A : An undefined local variable error will appear.
#   :
#   : Since a is initialized within the each method, 
#   : it becomes a local variable that is only accessible within the each method block.
#   :
#   : When the puts method is invoked with the variable a as an argument in line 18, 
#   : an error occurs because the local variable a hasn't been initialized in a scope accessible by the puts method.
#   : In other words, the puts method is trying to pass an argument that hasn't been defined yet.


array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a