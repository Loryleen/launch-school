# Q : number is randomly assigned a number between 0 and 9.
#   : Then, an if statement is used to print '5 is a cool number!'
#   : or 'Other numbers are cool too!' based on the value of number.
#   :
#   : Currently, '5 is a cool nubmer!' is being printed every time the program is run.
#   : Fix the code so that 'Other numbers are cool too!' can be executed.


number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end