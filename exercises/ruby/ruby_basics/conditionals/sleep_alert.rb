# Q : status is randomly assigned as 'awake' or 'tired'.
#   : Write an if statement that returns 'Be productive!' if status equals 'awake' 
#   : and returns 'Go to sleep!' otherwise.
#   : Then, assign the return value of the if statement to a variable and print it.


status = ['awake', 'tired'].sample

alert = if status == 'awake'
          result = 'Be productive!'
        else 
          result = 'Go to sleep!'
        end

puts alert