# Q : What will the following code print? Why?
# A : Printed values: 0 1 2
#   : After the 2nd iteration, the condition to exit out of the method
#   : by the return keyword is triggered.
#   : The return keyword does not provide a value, so it is nil.
#   : #p is used when invoking count_sheep so that nil is visible in the output.


def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep