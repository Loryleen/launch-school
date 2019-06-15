# Q : In the following code, what errors does it raise for the given examples?
#   : What exactly do the error messages mean?
#   :
# A : The find_first_nonzero_among method takes in a single parameter named numbers.
#   : Within its method body, #each is called on numbers, signifying that numbers is some type of collection.
#   : #each has two arguments: 
#   :   : Collection 
#   :       : The numbers collection.
#   :   : Block
#   :       : For every element in numbers, the block is run 
#   :       : The block is passed the current element as a parameter named n.
#   :       : Because the block only contains a single element, this signifies that its an Array#each method.
#   :       : This also signifies that numbers refers to an array of numbers.
#   : 
#   : find_first_nonzero_among(0, 0, 1, 0, 2, 0) 
#   :   : ERROR: ArgumentError 
#   :   : This method is passed multiple arguments, although it only requires a single argument.
#   :
#   : find_first_nonzero_among(1)
#   :   : ERROR: NoMethodError 
#   :   : This method is passed a single integer, although it requires an array collection.
#   :   : Integers do not have an each method.
#   :
#   : SOLUTION
#   : find_first_nonzero_among([0, 0, 1, 0, 2, 0])
#   : When this method is passed an appropriate argument, 
#   : it returns the first occurance of a nonzero number.


def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

find_first_nonzero_among(0, 0, 1, 0, 2, 0)
find_first_nonzero_among(1)