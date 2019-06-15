# Q : What will the following code print, and why?
# A : An error message will print (UndefinedMethodError).
#   : Method definitions are self-contained in terms of local variables.
#   : Since local variable a was initialized outside my_value, it is not visible inside my_value.
#   : This means local variable a is not visible to the each method invoked in my_value. 
#   : And so, the value of local variable a remains unchanged.


a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a