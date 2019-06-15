# Q : Write a program that requests two integers from the user,
#   : adds them together, and then displays the result.
#   : Insist that one of the integers be positive, and one negative;
#   : however, the order in which the two integers are entered does not matter.
#   :
#   : Do not check for the positive/negative requirement 
#   : until both integers are entered,
#   : and start over if the requirement is not met.
#   :
#   : Use the given method to validate input integers.


# validate input integers
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end


# return the number if it is a non-zero number
def read_number
  loop do
    puts '>> Please enter a positive or negative integer:'
    number = gets.chomp

    if valid_number?(number)
      return number.to_i
    else
      puts '>> Invalid input. Only non-zero integers are allowed.'
    end
  end
end


# intialize two numbers
first_number = nil
second_number = nil


# get user input number and call read_number to validate the number
# check that we have a positive and negative number by multiplying the two values
# the product of these numbers will be less than 0
# break out of loop when successful
loop do
  first_number = read_number
  second_number = read_number

  break if first_number * second_number < 0

  puts '>> Sorry. One integer must be positive, one must be negative.'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"