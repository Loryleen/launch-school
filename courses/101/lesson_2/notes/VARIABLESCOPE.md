# VARIABLE SCOPE
In this section we are only going to talk about `local variables`

The two major areas we encounter local variable scoping rules are:
- method definition
- method invocation with a block



## VARIABLES AND BLOCKS
Method invocation followed by `{...}` or `do..end` defines a block. <br>
The block is part of the method invocation.  

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



# MORE VARIABLE SCOPE
Goals:
1. Build on the definitions previously outlined.
2. Provide a more complex and more accurate mental model of methods, blocks, how they inter-relate, and how local variable scope fits into the picture. 

Two key terms of building this mental model are: `method definition` and `method invocation`. 



## METHOD DEFINITION
Method definition is when, within our code, we define a Ruby method using the `def` keyword.

```ruby
def greeting
  puts "Hello"
end
```


## METHOD INVOCATION
Method invocation is when we call a method from the Ruby library or a custom method we've defined using the `def` keyword.

```ruby
greeting    # Calling the greeting method outputs "Hello"
```

There are also methods being called with blocks:

```ruby
[1, 2, 3].each { |num| puts num }
```

Technically any method can be called with a block, but the block is only executed if the method is defined in a particular way. (Note: This will be covered in a later course).

At this point, we want to be clear that a block is part of the method invocation. <br>
In fact, method invocation followed by `{..}` or `do...end` is the way in whch we define a block in Ruby.

Essentially the block acts as an argument to the method.
In the same way that a local variable can be passed as an argument to a method at invocation, when a method is called with a block it acts as an argument to that method.

The way that an argument is used, whether it is a method parameter or a block, depends on how the method is defined.



### METHOD PARAMETER NOT USED
```ruby
def greetings(str)
  puts "Goodbye"
end

word = "Hello"

greetings(word)

# Outputs "Goodbye"
```


### METHOD PARAMETER USED
```ruby
def greetings(str)
  puts str
  puts "Goodbye"
end

word = "Hello"

greetings(word)

# Outputs "Hello"
# Outputs "Goodbye"
```

The greetings method has a parameter `str`. <br>
This allows the method to access the "Hello" value of the local variable `word` when we <br>
pass it as an argument at method invocation. <br>
The method outputs word.



### BLOCK NOT EXECUTED
We are very familiar with having a method access a local variable in the outer scope by passing it as an argument and holding that value through a method parameter. 

We are NOT familiar with how methods interact with blocks at invocation.

```ruby
def greetings
  puts "Goodbye"
end

word = "Hello"

greetings do
  puts word
end

# Outputs "Goodbye"
```


### BLOCK EXECUTED
Blocks and methods can interact with each other. <br>
The level of that interaction is set by the method definition and then used at method invocation. 

When invoking a method with a block, we aren't just limited to executing code within the block. <br>
Depending on the method definition, the method can use the return value of the block to perform some other action. 

```ruby
a = "hello"

[1, 2, 3].map {|num| a }    # => ["hello", "hello", "hello"]
```

The Array#map method is defined in such a way that it uses the return value of the block to <br> 
perform transformation on each element in an array. <br>
`#map` doesn't have access to `a` but it can use the value of `a` to perform transformation on <br>
the array since the block can access `a` and returns it to `#map`.



### REVIEW
Method definitions cannot directly access local variables initialized outside of the method definition, <br>
nor can local variables initialized outside of the method definition be reassigned from within it.

A block can access local variables initialized outside of the block and can reassign those variables. 

Methods can access local variables passed in as arguments. <br>
We've also seen that methods can access local variables through interaction with blocks. 

Method definition sets a certain scope for local variables in terms of parameters and <br>
how it interacts (if at all) with a block. 

Method invocation is using the scope set by the method definition. <br>
If the method is defined as a block, then the scope of the block can provide <br>
additional flexibility in terms of how the method invocation interacts with its surroundings. 