# 1 : Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.
# 1A: Go to name.rb 


# 2 : Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. 
# 2A: Go to age.rb


# 3 : Add another section onto name.rb that prints the name of the user 10 times. 
#     You must do this without explicitly writing the puts method 10 times in a row. 
#     Hint: you can use the times method to do something repeatedly.
# 3A: Go to name.rb


# 4 : Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. 
#     Then outputs their full name all at once.
# 4A: Go to name.rb


# 5 : Look at the following programs...
#     What does x print to the screen in each case? 
#     Do they both give errors? 
#     Are the errors different? Why?
# 5A: In the first program, the value printed for x is 3. 
#     x is a variable that is declared outside of the times method. 
#     Since x is available to the inner scope of the times method, its value can be re-assigned. 
#     When the times method is complete, it has re-assigned the value of x three times. 
#     The last program instruction is to print the current value of x which is 3.
# 5A: The second program produces an `undefined local variable or method` error. 
#     This is because x is defined within the times method, therefore x can only be accessed within its block of code. 

x = 0
3.times do
  x += 1
end
puts x


y = 0
3.times do
  y += 1
  x = y
end
puts x