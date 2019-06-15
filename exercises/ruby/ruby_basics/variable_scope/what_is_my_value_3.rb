# Q : What will the following code print, and why?
# A : The value of a will point to the value of local variable a.
#   : Although my_value is invoked and is passed an argument of local variable a + 5, 
#   : the value of a assigned within my_value is not accessible outside of the method.
#   : The puts method in line 14 instead references local variable a. 


a = 7

def my_value(b)
    a = b
end

my_value(a + 5)
puts a