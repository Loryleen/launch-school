# Q : The output of the code below tells you that you have around $70.
#   : However, you expected the bank acount to have around $238.
#   : What did we do wrong?
#   :
# A : balance = calculate_balance(month)
#   : Here, we are reassigning the value of balance after each iteration of month.
#   : $70 is the balance of the final iteration which is for march. 
#   : We need to take account of the balance values for all three months!
#   :
#   : SOLUTION
#   : balance += calculate_balance(month)
#   : With each iteration of month, we get a monthly balance.
#   : We then add this number to the variable balance.
#   : After the each method completes its three iterations, 
#   : we get the sum balance of all three months, $238.


# Financially, you started the year with a clean slate. 
balance = 0

# What you earned and spent during the first three months.
january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ], #1285
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...
def calculate_balance(month)
  plus = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance = calculate_balance(month)
end

puts balance