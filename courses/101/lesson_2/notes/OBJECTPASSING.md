# PASS BY REFERENCE VS PASS BY VALUE
Rubyists seem to disagree on whether Ruby is "pass by reference" or "pass by value". <br>
In the end, it doesn't matter what you call it, as long as you understand how to invoke methods with the behavior you expect. 

The discussion stems from trying to determine what happens to objects when passed into methods. <br>
In most programming languages, there are two ways of dealing with objects passed into methods. <br>
1. Treat these arguments as `"references"` to the original object
2. Treat these arguments as `"values"`, which are copies of the original. 



## PASS BY "VALUE"
Using the traditional language --C, when you "pass by value", the method only has a copy of the original object. 
Operations performed on the object within the method have no effect on the original object outside of the method.

Some Rubyists say Ruby is "pass by value" because re-assigning the object within the method doesn't affect the object outside of the method:

```ruby
def change_name(name)
  name = "bob"    # => does this reassignment change the object outside the method?
end

name = "jim"
change_name(name)
puts name         # => jim
```

It looks like it's by value, since re-assigning the variable only affected the method-level variable, and not the main scope variable. 



## PASS BY "REFERENCE"
If Ruby was pure "pass by value", that means there should be no way for operations within a method to cause changes to the original object:

```ruby
def cap(str)
  str.capitalize!   # => does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name           # => Jim
```

This implies that Ruby is "pass by reference", because operations within the method affected the original object.



## WHAT RUBY DOES
Ruby exhibits a combination of behaviors from both "pass by reference" and "pass by value". <br>
Some people call this `pass by reference of the value` or `call by sharing`. 

Whatever we call it, the important concept to remember is: <br>
When an operation within the method mutates the caller, it will affect the original object.

The natual question now is: which operations mutate the caller? <br>
In the Ruby core library, a lot of destructive (mutating the caller) methods end with a `!`. <br>
However, this is just a naming convention, not a guarantee.

For example, the Array#<< method is destructive, but doesn't end with a `!`.

```ruby
def add_name(arr, name)
  arr << name
end

names = ["bob", "kim"]
add_name(names, "jim")
puts names.inspect      # => ["bob", "kim", "jim"]
```

Also remember that re-assignment is not considered a destructive operation:

```ruby
def add_name(arr, name)
  arr = arr + [name]
end

names = ["bob", "kim"]
add_name(names, "jim")
puts names.inspect     # => ["bob", "kim"] 
```

If we made a very tiny change, the result is different:

```ruby
def add_name(arr, name)
  arr = arr << name
end

names = ["bob", "kim"]
add_name(names, "jim")
puts names.inspect     # => ["bob", "kim", "jim"]
```

We changed the `+` to a `<<` and moved `name` out of an array. <br>
This implies that when we use `+` to concatenate two arrays together, it is returning a new array and not mutating the original. <br>
However, when we use `<<` to append a new value into an array, it is mutating the original array and not returning a new array.



## VARIABLES AS POINTERS
Variables act as pointers to a place (or address space) in memory. <br>

In the example below, a will point to a different address in memory because it was reassigned. This is what the `=` operator does. 

Also, even if we add another line to reassign a `a = hi there`, although it will have the same value as b, it will still point to a different address in memory. 

```ruby
a = "hi there"
b = a
a = "not here"

# => a now points to a different address in memory
```

In another snippet of code, rather than reassigning a to a new string, we mutated the caller and modified the existing string. Variable b also points to this same address. This is why whenever b reflects any changes made to a. 

This is a major point! Some operations will mutate the actuall address space in memory, thereby affecting all variables that point to that address space. 

```ruby
a = "hi there"
b = a
a << " !!!!!"

# => b points to the same address space in memory as a.
```

Some operates will not mutate the address space in memory, and instead will re-point the variable to a new address space in memory. 

Always pay attention whether your variables are pointing to the same object (space in memory) or if they re dealing with copies that occupy different address space in memory. 