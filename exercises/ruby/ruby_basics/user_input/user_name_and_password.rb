# Q : Modify the program so it requires a user name and password.
#   : The program should solicit both the user name and the password,
#   : then validate both, and issue a generic error message if one or 
#   : both are incorrect; the error message should not tell the user 
#   : which item is incorrect.


USERNAME = "Admin"
PASSWORD = "pa55word"

loop do
  puts "Hello, please enter your username: "
  username_entered = gets.chomp

  puts "Please enter your password: "
  password_entered = gets.chomp

  if username_entered == USERNAME && password_entered == PASSWORD
    puts "Welcome #{USERNAME}!"
    break
  else
    puts "Incorrect username or password. Please try again."
    next
  end
end



