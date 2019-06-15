# Q : Write a program that asks the user whether they want the program to print "something", 
#   : then print it if the user enters y. 
#   : Otherwise, print nothing.


prompt = "Do you want me to print 'something'? (y/n)"

loop do 
  puts prompt
  input = gets.chomp.downcase

  if input == "y"
    puts "something"
  elsif input == "n"
    break
  else
    puts "please enter 'y' or 'n'"
  end
end