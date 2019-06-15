# Q : When the user inputs 10, we expect the program to print 'The result is 50!',
#   : but that's not the output.
#   : Why not?
#   :
# A : The multiply_by_five method multiplies a number by 5.
#   : All user input will be a String.
#   : When we get user input that we intend to use as a number to perform a calculation, 
#   : we must convert it from a String to an Integer using #to_i. 
#   :
#   : SOLUTION
#   : number = gets.chomp.to_i


def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"