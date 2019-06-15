# Q : We want to iterate through the numbers array and return a new array
#   : containing only the even numbers.
#   : However, our code isn't producing the expected output.
#   : Why not? How can we change it?
#   :
# A : Array#map is useful when we want to transform data.
#   : It returns a new array containing the return value of the block for each iteration.
#   : This leaves the original data collection unchanged. 
#   : The block expression #even? returns:
#   :   : n if n is even
#   :   : nil if n is odd
#   : 
#   : OUTPUT
#   : even_numbers = [nil, 2, nil, 6, nil, nil, 8]
#   :
#   : SOLUTION
#   : even_numbers = numbers.select do |n|
#   :   n.even?
#   : end
#   : Array#select is best suited for returning a new array containing elements
#   : of the original array for which the return value of the block is truthy.


pets[:dog].push('bowser')

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n if n.even?
end

p even_numbers