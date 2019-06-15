# 1 : Write down whether the following expressions return true or false. 
#     Then type the expressions into irb to see the results.

(32 * 4) >= 129                                             # => false
false != !true                                              # => false
true == 4                                                   # => false
false == (847 == '847')                                     # => true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # => true


# 2 : Write a method that takes a string as argument. 
#     The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. 
#     ex) Change "hello world" to "HELLO WORLD". 
#     Hint: Ruby's String class has a few methods that would be helpful. 

def upcase(str)
  if str.length > 10
    str.upcase
  else
    str
  end
end

puts upcase("hello")
puts upcase("helloooooooooooooooo")


# 3 : Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Please enter a number between 0 and 100"
num = gets.chomp.to_i

if num < 0
  puts "ERROR: You cannot enter a negative number"
elsif num <= 50
  puts "Your number is between 0 and 50"
elsif num <= 100
  puts "Your number is between 51 and 100"
else
  puts "Your number is above 100"
end


# 4 : What will each block of code below print to the screen? 
#     Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.

'4' == 4 ? puts("TRUE") : puts("FALSE") # => "FALSE"

x = 2

if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end                                     # => "Did you get it right?"

y = 9
x = 10

if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end                                     # => "Alright now!"


# 5 : Rewrite your program from exercise 3 using a case statement. 
#     Wrap this new case statement in a method and make sure it still works.

def number_range(num)
  case 
  when num < 0
    puts "ERROR: You cannot enter a negative number"
  when number <= 50
    puts "#{num} is between 0 and 50"
  when number <= 100
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is above 100"
  end
end

puts "Please enter a number between 0 and 100"
number = gets.chomp.to_i

number_range(number)


# 6 : When you run the following code, you get the following error message:
#     exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end
#     Why do you get this error and how can you fix it?
# 6A: The equal_to_four method throws a syntax error because the if-else block must contain the reserved 'end' keyword used to end the expression. 
#     Without it, the if-else code block cannot be executed.

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)