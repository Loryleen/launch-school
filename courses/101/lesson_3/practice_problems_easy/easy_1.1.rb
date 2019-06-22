# Q : What do you expect the code below to print out?
# A : The following would print:
#   : 1
#   : 2
#   : 2
#   : 3
#   :
#   : Array#uniq is a non-destructive method that returns a new array
#   : after removing duplicate values.
#   : Because Array#uniq is non-destructive, it did not mutate the numbers object.
#   :
#   : Since the puts method automatically calls to_s on its argument, we get the string output.
#   : Using p numbers (which automatically calls inspect on its argument) would have output [1, 2, 2, 3]
#   : Using puts numbers.inspect would also output [1, 2, 2, 3]


numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers