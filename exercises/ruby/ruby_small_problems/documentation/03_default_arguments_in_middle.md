# DEFAULT ARGUMENTS IN THE MIDDLE 

Consider the following method and a call to that method:

```ruby
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
```

Use the ruby documentation to determine what this code will print. 



## DEFAULT POSITIONAL ARGUMENTS
When a method defines default arguments, we do not need to supply all the arguments to the method. <br>
Ruby will fill the missing arguments in order. 

Note: Required Arguments = Positional Arguments


### SUPPLY ONLY POSITIONAL ARGUMENTS:
```ruby
def my_method(a, b, c = 3, d = 4)
  puts [a, b, c, d]
end

my_method(1, 2)   # => [1, 2, 3, 4]
```

Here, `c` and `d` have default values which Ruby will apply for us. <br>
If we send only two arguments to this method, `my_method(1, 2)` will print `[1, 2, 3, 4]`.



### SUPPLY ALL POSITIONAL ARGUMENTS AND SOME DEFAULT ARGUMENTS
```ruby
my_method(a, b, c = 3, d = 4)
  puts [a, b, c, d]
end

my_method(1, 2, 5)    # => [1, 2, 5, 4]
```

If we send only three arguments to this method, `my_method(1, 2, 5)` will print `[1, 2, 5, 4]` because Ruby will fill the missing arguments from left to right. 



### DEFAULT ARGUMENTS IN THE MIDDLE
Ruby allows default values to appear in the middle of positional arguments. 
```ruby
my_method(a, b = 2, c = 3, d)
  puts [a, b, c, d]
end

my_method(1, 4)   # => [1, 2, 3, 4]
```

Here `b` and `c` have default values. <br>
If we send only two arguments to this method, `my_method(1, 4)` will print `[1, 2, 3, 4]` because it first assigns values to required arguments. 


Another example:
```ruby
my_method(a, b = 2, c = 3, d)
  puts [a, b, c, d]
end

my_method(1, 5, 6)   # => [1, 5, 3, 6]
```



## RULES
Ruby first assigns values to positinoal arguments from left to right. <br>
Ruby then assigns values to default arguments from left to right. <br>
Finally, default values are applied to anything remaining.