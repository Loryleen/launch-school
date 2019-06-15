# Q : Compare the value of name with the string 'RoGer'
#   : while ignoring the case of both strings.
#   : Print true if the values are the same.
#   : Pring false if they aren't. 
#   : Then, perform the same case-insensitive comparison,
#   : except compare the value of name with the string 'DAVE'.
#   :
# A : Typically, when comparing strings, the goal is to compare their values, 
#   : regardless of whether the characters are uppercase or lowercase.
#   : #casecmp performs a case-insensitive comparison, 
#   : meaning it ignores the case of each character. 
#   : When both compared strings are equal, #casecmp will return 0. 


name = 'Roger'

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0