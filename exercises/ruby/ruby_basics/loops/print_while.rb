# Q : Using a while loop, print 5 random numbers between 0 - 99.
# N : The rand method is a random number generator.


numbers = []

while numbers.size != 5
  numbers << rand(0..99)
end

puts numbers