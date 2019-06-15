# Q : What will the following print? Why?
# A : Numbers 0 to 5 will print. 
#   : 5 is the return value.
#   : Using Integer#times causes the output to include 0 - 4, five iterations.
#   : After the fifth iteration the block returns the initial integer, 5.  


def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep