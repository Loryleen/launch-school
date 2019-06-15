# Q : What will the following code print, and why?
# A : The string Xy-zy will print.
#   :
#   : Numbers (immutable)
#   : In Ruby, numbers are immutable. 
#   : Methods cannot re-assign the value of a numeric variable that is initalized outside of it.
#   : If a method is passed a numeric variable as an argument, the method parameter will initially point to the same object as the numeric variable.
#   : However, if the method re-assigns the value of the parameter, that parameter now points to a new object. 
#   :
#   : Strings (mutable)
#   : Unlike numbers, strings are mutable.
#   : In fact, String#[]= is a mutating method.
#   : my_value's parameter b points to the same object as local variable a.
#   : Because they point to the same object and because strings are mutable, any changes that occur to parameter b will be reflected in local variable a.
#   :
# N : Use #object_id (instance method) to track object ids. 


a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a 