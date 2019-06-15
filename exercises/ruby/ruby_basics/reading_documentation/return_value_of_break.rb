# Q : In the previous exercise, you learned that the while loop returns nil unless break is used. 
#     Locate the documentation for break, and determine what value break sets the return value to for the while loop.
# A : When no arguments are passed to break, it will return nil.
# A : When an argument is passed to break, it will return the value of the argument.


# ex: while loop

result = while true
  break                            # break is not passed an argument
end

p result                           # => nil


# ex: while loop

a = 0

while true do
  p a                              # a = 0
  a += 1                           # a = 1

  break if a < 10                  # break is executed since the condition is met: a is less than 10
end

p a                                # => 1


# ex: each method

result = [1, 2, 3].each do |value|
  break value * 2 if value.even?   # break is executed since the condition is met: 2 * 2 = 4 which is an even number
end

p result                           # => 4