# Q : What will the following code print? Why?
# A : Printed value: 1
#   : The if/else statement has a conditional of true.
#   : This means that the if clause will be evaluated every time.
#   : Within the if clause, the variable named number is assigned a value of 1.
#   : This variable assignment returns the value it was assigned to.
#   : The else clause is never run.


def tricky_number
  if true 
    number = 1
  else
    2
  end
end

puts tricky_number 