# Q : Modify the code so that the user's input is added to the numbers array.
#   : Stop the loop when the array contains 5 numbers.


numbers = []

loop do
  puts 'Enter any number:'
  number = gets.chomp.to_i

  numbers << number

  break if numbers.size == 5
end