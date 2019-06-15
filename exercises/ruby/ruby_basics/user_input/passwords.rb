# Q : Write a program that displays a welcome message,
#   : but only after the user enters the correct password,
#   : where the password is a string that is defined as a 
#   : constant in your program.
#   : Keep asking for the password until the user enters 
#   : the correct password.


PASSWORD = "LaunchSchoolROCKS!"

loop do
  puts "Please enter the password: "
  entered_password = gets.chomp

  break if entered_password == PASSWORD

  puts "Incorrect password. Please try again."
end

puts "Welcome, student!"