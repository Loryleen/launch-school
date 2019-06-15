# Q : What does the following code print, and why?
# A : The value of local variable a is 7. 
#   : Although the local variable a that is initialized in line 1 has the same name as my_value's paramter a,
#   : they both point to different objects.
#   : It is also important to note that my_value's local variable a is strictly contained within the method.
#   : This means that the value of parameter a cannot be accessed outside of the my_value method. 
#   : Also, the value of a local variable cannot be mutated or altered within a method.


a = 7

def my_value(a)
    a += 10
end

my_value(a)
puts a