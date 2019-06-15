# 1 : Write a program that prints a greeting message. 
#     This program should contain a method called greeting that takes a name as its parameter and returns a string.

def greeting(name="rubyist")
  "Welcome, #{name}! Ready to code?"
end

greeting()
greeting("Lory")


# 2 : What do the following expressions evaluate to?

x = 2                       # => 2
puts x = 2                  # => nil
p name = "Joe"              # => "Joe"
four = "four"               # => "four"
print something = "nothing" # => nil


# 3 : Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply (x, y)
  x * y
end

multiply(2, 5)


# 4 : What will the following code print to the screen?
# 4A: Although 'Yippeee!!!!' will be the return value, nothing will print since the program ends as soon as it returns a value.

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")


# 5 : Edit the method definition in exercise #4 so that it does print words on the screen. 
#     What does it return now?
# 5A: It prints "Yippeee!!!!", but returns nil.

def scream(word)
  words = words + "!!!!"
  puts words
end

scream("Yippeee") 


# 6 : What does the following error message tell you?
#     ArgumentError: wrong number of arguments (1 for 2)
#       from (irb):1:in `calculate_product'
#       from (irb):4
#       from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
# 6A: The error message states that an argument error occured in the 'calculate_product' method, located in line 4. 
#     This error may be due to the method requiring 2 arguments, but was only supplied 1 argument when the method was called.