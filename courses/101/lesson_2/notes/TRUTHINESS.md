# TRUTHINESS 
Booleans indicate that a value can only have true or false representations. <br>
This helps us build conditional logic so we may understand the state of an object or expression. <br>
In Ruby, booleans are represented by `true` and `false` objects with each having their own classes.

```ruby
true.class    # => TrueCLass
true.nil?     # => false
true.to_s     # => "true"
true.methods  # => list of methods that can be called on the true object

false.class   # => FalseClass
false.nil?    # => false
false.to_s    # => "false"
false.methods # => list of methods that can be called on the false object
``` 

We can use expressions or method calls that return a true or false object in a conditional. 

```ruby
num = 5

if (num < 10)
  puts "small number"
else 
  puts "large number"
end
```

The above outputs "small number" because the expression evaluates to true. <br>
We can verify this in irb:

```ruby
num = 5          # => 5
num < 10         # => true
(num < 10).class # => TrueCLass
```



## LOGICAL OPERATORS 
Logical operators compare multiple boolean expressions or values and provide a `truthy` or `falsey` value.

Comparison operators compare values and return true or false. <br>
The operators include: `>, >=, <, >=, !=, ==`

Note: We can omit the parentheses because Ruby's order of operations <br> 
considers comparison operators higher precedence than logical operators. <br>



### LOGICAL OPERATOR: && 
The `&&` (and) logical operator returns true if both expressions being compared are `true`.

```ruby
true && true         # => true
true && false        # => false

num < 10 && num.odd? # => true
num > 10 && num.odd? # => false
```



### LOGICAL OPERATOR: || 
The `||` (or) logical operator returns true if either one of the comparison objects is true.

```ruby
true || true   # => true
false || false # => false
true || false  # => true
false || true  # => true
```



### SHORT CIRCUITING 
The `&&` and `||` operators exhibit a behavior called `short circuiting`. <br>
Short circuiting causes an expression to stop evaluating once it can guarantee the return value.

```ruby
true || 3/0 # => true
```

The above expression doesn't generate a `ZeroDivisionError` because `||` didn't evaluate the second expression. <br>
It short circuited after encountering true. 



### TRUTHINESS 
`Truthiness` differs from `true` in that Ruby considers more than the true object to be "truthy". <br>
Ruby considers everything to be truthy other than `false` and `nil`. <br>
An expression that Ruby considers true is not the same as the true object. 

```ruby
num = 5

if num && num.odd?
  puts "valid number"
else
  puts "error!"
end
```

The above code will output "valid number" because it is "truthy" so long as num or the expression are not false or nil. <br>
This does not, however, mean that num is equal to the true object. 

```ruby
num = 5

num && num.odd? == true # => true
num == true             # => false
```

REMEMER: Everything in Ruby is considered "truthy" except for false and nil. 