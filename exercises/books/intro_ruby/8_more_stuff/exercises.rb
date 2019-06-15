# 1 : Write a program that checks if the sequence of characters "lab" exists in the following strings. 
#     If it does exist, print out the word.

def contains_lab?(string)
  if /lab/.match(string.downcase)
    puts string
  else
    puts "'lab' is not found in #{string}"
  end
end

contains_lab?("laboratory")
contains_lab?("experiment")
contains_lab?("Pans Labyrinth")
contains_lab?("elaborate")
contains_lab?("polar bear")


# 2 : What will the following program print to the screen? 
#     What will it return?
# 2A: Nothing is printed since the .call method wasn't called on block to activate the execute method.
#     A Proc object is returned.

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }


# 3 : What is exception handling and what problem does it solve?
# 3A: Exception handling is a structure used to handle the possibility of an error occurring in a program. 
#     It is a way of handling the error by changing the flow of control without exiting the program entirely.


# 4 : Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello form inside the execute method!" }


# 5 : Why does the following code give us the following error when we run it?
#     block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
#       from test.rb:5:in `<main>'
# 5A: The method parameter block is missing the ampersand sign which allows a block to be passed as a parameter.