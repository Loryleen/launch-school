# Q : What will the following code print, and why?
# A : Nothing will print because there is an undefined local variable error.
#   :
#   : Local variables initialized outside of a method definition are not visible inside the method definition.
#   : However, these local variables can be passed as a method argument.
#   :
#   : Local variables initialized inside of a method definition are not visible outside the method definition.
#   : However, these local variables can be returned by a method.


a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a