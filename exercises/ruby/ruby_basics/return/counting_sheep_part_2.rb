# Q : What will the following code print? Why?
# A : Printed values: 0 1 2 3 4 10 
#   : Integer#times passes in values from 0 to integer - 1.
#   : Despite its name, the variable named sheep actually holds an integer value.
#   : Since there is no explicit return value, 
#   : 10 is the inplicit return value because it is the last line evaluated.


def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep