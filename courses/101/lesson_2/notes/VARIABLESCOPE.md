# VARIABLE SCOPE
In this section we are only going to talk about `local variables`

The two major areas we encounter local variable scoping rules are:
- method definition
- method invocation with a block



## VARIABLES AND BLOCKS
We've already been using Ruby blocks when we type `do..end` or `{..}` follwing a method invocation. 

```ruby
[1, 2, 3].each do |num|
  puts num
end
```

The part of the code we call the `block` is the part following the method invocation: 

```ruby
do |num|
  puts num
end
```

The `do..end` can be replaced by `{..}`

```ruby
{ |num|
  puts num
}
```

Although the above code works, Rubyists prefer to use `do..end` for multi-line blocks, and `{..}` for single line blocks. 

Ruby blocks create a new scope for local variables. <br>
The `inner scope` is the scope created by a block following a method invocation. <br>
Variables initialized in an `outer scope` can be accessed in an inner scope, but not vice versa.

Nested blocks will create nested scopes. <br>
A variable's scope is determined by where it is initialized. 



### OUTER SCOPE VARIABLES CAN BE ACCESSED BY INNER SCOPE
```ruby
a = 1           # outter scope variable

loop do         # the block following the invocation of the 'loop'
  puts a        # => 1
  a = a + 1     # "a" is re-assigned to a new value
  break         # necessary to prevent infinite loop
end

puts a          # => 2 "a" was re-assigned in the inner scope
```

Rule(s):
- The inner scope can access outer scope variables
- You can change the value of variables from an inner scope and have that affect the outer scope

When we instantiate variables in an inner scope, we have to be careful that we're not <br>
accidentally re-assigning an existing variable in an outer scope. <br>
This is a big reason to avoid single-letter variable names!



### INNER SCOPE VARIABLES CANNOT BE ACCESSED IN OUTER SCOPE
```ruby
loop do     # the block following the invocation of the 'loop'
  b = 1
  break
end

puts b      # => NameError: undefined local variable or method 'b' for main:Object
```

Rule(s):
- A variable initialized in an inner scope cannot be accessed in outer scope



### PEER SCOPES DO NOT CONFLICT
```ruby
2.times do
  a = 'hi'
  puts a      # 'hi' <= this will be printed out twice due to the loop
end

loop do
  puts a      # => NameError: undefined local variable or method 'a' for main:Object
  break
end

puts a        # => NameError: undefined local variable or method 'a' for main:Object
```

The initial `a = 'hi'` is scoped within the block of code that follows the `times` method invocation. <br>
Peer blocks cannot reference variables initialized in other blocks. <br>
This means we can re-use the variable name `a` in the block of code that follows the `loop` method invocation. 



### NESTED BLOCKS
Nested blocks follow the same rules of inner and outer scoped variables. <br>
When dealing with nested blocks, our usage of what's "outer" or "inner" is going to be relative. <br>
We'll switch vocabulary and say "first level", "second level", etc. 

```ruby
a = 1       # first level variable

loop do         # second level
  b = 2

  loop do           # third level
    c = 3   
    puts a          # => 1
    puts b          # => 2
    puts c          # => 3
    break
  end

  puts a        # => 1
  puts b        # => 2
  puts c        # => NameError
  break
end

puts a      # => 1
puts b      # => NameError
puts c      # => NameError
```


### VARIABLE SHADOWING
We've been using `loop do...end`, which doesn't take a parameter, but some blocks do take a parameter:

```ruby
[1, 2, 3].each do |n|
  puts n
end
```

What if we also had a variable name `n` in the outer scope? <br>
We know that the inner scope has access to the outer scope, <br>
so we'd have two local variables in the inner scope with the same name. <br>
This is called `variable shadowing` and it prevents access or changes to the outer scope local variable. 

```ruby
n = 10

1.times do |n|
   n = 11
end

puts n            # => 10
```

Avoid variable shadowing! <br>
Choose clear and descriptive variable names to avoid weird unintended scoping issues. <br>
This is also better for debugging.



## VARIABLES AND METHOD DEFINITIONS
If the block following a method invocation has a scope that "leaks", <br>
then a method definition has a scope that is entirely self contained. 

The only variables a method definition has access to must be passed into the method definition. <br>
(Note: we're only talking about local variables for now)
A method definition has no notion of "outer" or "inner scope" <br>
We must explicitly pass in any parameters to a method definition. 



### A METHOD DEFINITION CAN'T ACCESS LOCAL VARIABLES IN ANOTHER SCOPE
```ruby
a = "hi"

def some_method
  puts a
end

# invoke the method
some_method           # => NameError: undefined local variable or method "a" for main:Object
```


### A METHOD DEFINITION CAN ACCESS OBJECTS PASSED IN
```ruby
def some_method(a)
  puts a
end

some_method(5)        # => 5
```

Remember: Local variables that are not initialized inside a method definition must be passed in as a parameter. 



## BLOCKS WITHIN METHOD DEFINITIONS
The rules of scope for a method invocation with a block remain in full effect even if we're working inside a method definition. 

```ruby
def some_method
  a = 1
  5.times do 
    puts a
    b = 2
  end

  puts a
  puts b
end

some_method       # => NameError: undefined local variable or method "b" for main:Object
```


## CONSTANTS
The scoping rules for constants is not the same as local variables. <br>
Constants are said to have `lexical scope`, which will be discussed in object oriented programming. <br>
Constants behave like globals.

```ruby
USERNAME = "Batman"

def authenticate
  puts "Logging in #{USERNAME}"
end

authenticate    # => Logging in Batman
```

Local variables, on the other hand, can't "leak" into method definitions like tihs. 



### CONSTANTS AND A METHOD INVOCATION WITH A BLOCK
```ruby
FAVORITE_COLOR = "taupe"

1.times do 
  puts "I love #{FAVORITE_COLOR}!"    # => I love taupe!
end
```

Local variables also behave the same. <br>


### INITIALIZING A CONSTANT IN AN INNER SCOPE
```ruby
loop do
  MY_TEAM = "Phoenix Suns"
  break
end

puts MY_TEAM    # => Phoenix Suns
```

This is different from local variables!