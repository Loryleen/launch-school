# Q : What will the following code print, and why?
# A : The string printed will be 'Xyzzy'
#   :
#   : Because strings are mutable, we might expect local varible a to be assigned the value "yzzyX".
#   : However, it's important to note that in line 9, b is assigned a completely new string.
#   : Assigning a new string never mutates an object, it instead creates a new object.
#   : This means that local variable a remains unchanged. 
#   : 
# N : The string can be mutated if there was a call to a method by the string (ex: b.clear or b[2] = '-')
# N : Use #object_id to track objects.


a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a