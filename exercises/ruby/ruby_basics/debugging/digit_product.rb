# Q : Given a string of digits, our digit_product method should
#   : return the product of all digits in the String argument.
#   : You've been asked to implement things method without using reduce or inject.
#   : When testing the method, you are surprised by the return value of 0.
#   : What's wrong with the code? How can it be fixed?
#   :
# A : The answer is always zero because the product variable is initialized to 0.
#   : Multiplying any number by zero will equal to 0.
#   :
#   : SOLUTION
#   : product = 1
#   : We can initialize the variable product the value of 1.


def digit_product(str_num)
  digits = str_num.chars.map do |n| 
    n.to_i
  end
  
  product = 0

  digits.each do |digit|
    product *= digit
  end

  product
end

p digit_product('12345')