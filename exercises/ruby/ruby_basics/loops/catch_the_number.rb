# Q : Modify the code so the loop stops if number is between 0 - 10.


loop do
  number = rand(100)
  
  puts number

  break if number.between?(0, 10)
end