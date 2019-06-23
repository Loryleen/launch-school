# PRACTICE PROBLEMS EASY - PART 1



## QUESTION 1
What would you expect the code below to print out?

```ruby
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# => 1
#    2
#    2
#    3
```

`Array#uniq` is a non-destructive method that returns a new array after removing duplicate values. <br>
Because this method is non-destructive, it did not mutate the numbers object.

Since the `puts` method automatically calls `to_s` on its argument, we get the string output.

Using `p numbers` (which automatically calls `inspect` on its argument) would have output `[1, 2, 2, 3]` <br>
Using `puts numbers.inspect` would also output `[1, 2, 2, 3]`



## QUESTION 2
Describe the difference between `!` and `?` in Ruby. <br>
And explain what would happen in the following scenarios:

1. what is `!=` and where should you use it?
2. put `!` before something, like `!user_name`
3. put `!` after something, like `words.uniq!`
4. put `?` before something
5. put `?` after something
6. put `!!` before something, like `!!user_name`

### != : NOT EQUAL TO OPERATOR
The not equal to comparison operator `!=` checks if the value of two operands are equal or not. <br>
If the values are not equal, then the condition becomes true. 

```ruby
"hello" != "hi"   # => true
```

### ! : BANG OPERATOR BEFORE OBJECT
The bang operator `!` (logical NOT operator) before some object will turn any object into the opposite of their boolean equavalent. 

```ruby
toggle = true

!toggle   # => false
```

### !! : DOUBLE BANG OPERATOR BEFORE OBJECT
The double bang operator `!!` is used to turn any object into their boolean equilavent.

```ruby
toggle = true

!!toggle    # => true
```

### ?: : TERNARY OPERATOR
The ternary operator `?:` evaluates an expression for a true or false value that is used to determine which of two given statements will be executed.

```ruby
"sentence".length > 5 ? "yes" : "no"    # => "yes"
```

### ! OR ? AFTER OBJECT
`!` or `?` at the end of the method, it's just part of the method name, not the Ruby syntax. <br>
`!` is typically used to indicate a destructive method. <br>
`?` is typically used to indicate a method that checks for truthiness or a boolean value. 

```ruby
programming_language = "r"

programming_language.capitalize!

puts programming_language   # => "Ruby"
```

```ruby
num = 14

num.is_even?    # => true
```



## QUESTION 3
Replace the word "important" with "urgent" in this string:

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!("important", "urgent")

puts advice   # => "Few things in life are as urgent as house training your pet dinosaur."
```



## QUESTION 4
The Ruby Array class has several methods for removing items from the array. <br>
Two of them have very similar names.

What do the following method calls do? <br>
(assume we reset `numbers` to the original array between method calls)

```ruby
numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)    # => 2

p numbers            # => [1, 3, 4, 5]
```

The `Array#delete_at` method is a destructive method that modifies the object. 

It takes in an integer argument and deletes at the nth element.

```ruby
greetings = ["hi", "hello", "bye", "see ya"]

numbers.delete("bye")   # => "bye"

p numbers        # => ["hi", "hello", "see ya"]
```

The `Array#delete` method is a destructive method that modifies the object.

It takes an argument of a value that we want deleted from the array. <br>
It returns nil if the argument isn't found in the array.



## QUESTION 5
Programmatically determine if 42 lies between 10 and 100. <br>
hint: Use Ruby's range object in your solution. 

```ruby
(10...100).cover?(42)   # => true
```



## QUESTION 6
With the following string, show two different ways to put the expected "Four score and " in front of it.

```ruby
famous_words = "seven years ago..."

famous_words.prepend("Four score and ")     # destructive 
famous_words.insert(0, "Four score and ")   # destructive 
"Four score and " << famous_words           

puts famous_words
```



## QUESTION 7
Fun with gsub:

```ruby
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)")}

p how_deep
```

This gives us a string that looks like a "recursive" method call:

```ruby
"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
```

If we take advantage of Ruby's `Kernel#eval` method to have it execute this string as if it were a "recursive" method call, what will be teh result?

```ruby
eval(how_deep)    # 42
```

Note: The `Kernel#eval` method is rate used in Ruby, you're not expected to understand how it works at this state.



## QUESTION 8
If we build an array like this:

```ruby
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
```

We will end up with this "nested" array:

```ruby
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
```

Make this into an un-nested array.

```ruby
flintstones.flatten!
```



## QUESTION #9
Given the hash below, turn this into an array containing only two elements: <br>
Barney's name and Barney's number

```ruby
flintstones = { 
  "Fred" => 0,
  "Wilma" => 1,
  "Barney" => 2,
  "Betty" => 3,
  "BamBam" => 4,
  "Pebbles" => 5
}

flintstones.assoc("Barney")   # => ["Barney", 2]
```

The `Array#assoc` method searches through an array whose elements are also arrays comparing `obj` with the first element of each contained array using obj==. 

Returns the first contained array that matches (first associated array), or `nil` if no match is found. 