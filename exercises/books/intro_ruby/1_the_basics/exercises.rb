# 1 : Add two strings together that, when concatenated, return your first and last name as your full name in one string.

first_name = "Lory"
last_name = "B" 

return "#{first_name} #{last_name}"


# 2 : Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 
#     1) thousands place 
#     2) hundreds place 
#     3) tens place 
#     4) ones place

number = 5251
thousands = number / 1000
hundreds = number % 1000 / 10
tens = number % 100 / 10
ones = number % 100 % 10


# 3 : Write a program that uses a hash to store a list of movie titles with the year they came out. 
#     Then use the puts command to make your program print out the year of each movie to the screen.

movies = {
  :movie_1 => 1975,
  :movie_2 => 2004,
  :movie_3 => 2013,
  :movie_4 => 2001,
  :movie_5 => 1981
}

movies.each do |movie_title, year|
  puts "#{movie_title} was released in #{year}"
end


# 4 : Use the dates from the previous example and store them in an array. 
#     Then make your program output the same thing as exercise 3.

years = [1975, 2004, 2013, 2001, 1981]

years.each do |year|
  puts year
end


# 5 : Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

factorial_of_5 = 5 * 4 * 3 * 2 * 1
factorial_of_6 = 6 * 5 * 4 * 3 * 2 * 1
factorial_of_7 = 7 * 6 * 5 * 4 * 3 * 2 * 1
factorial_of_8 = 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1


# 6 : Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

float_nums = [1.0, 5.5, 9.22]

float_nums.each do |num|
  puts "#{num} squared is: #{num * num}"
end


# 7 : What does the following error message tell you?
#     SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#       from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
# 7A: In line 2 of the irb session, there is a syntax error. 
#     The error message indicates that ')' was used in place of an '}'. 
#     Some of the reasons this error may have occured are from incorrectly openning or closing code blocks, or incorrectly initializing a hash.