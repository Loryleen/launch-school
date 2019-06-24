# PRACTICE PROBLEMS EASY - PART 2



## QUESTION 1
In this hash of people and their age, see if "Spot" is present.

Bonus: What are two other hash methods that would work just as well for this solution? 

```ruby
ages = {
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 402,
  "Eddie" => 10
}

ages.include?("Herman")
ages.key?("Herman")
ages.member?("Eddie")
```



## QUESTION 2
Starting with this string: 

```ruby
munsters_description = "The Musnters are creepy in a good way."
```

Convert the string in the following ways (code will be executed on original `munsters_description` above).

```ruby
"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."    # first letter downcased, everything else is capitalized
"The munsters are creepy in a good way."    # first letter upcased, everything else is downcased
"the munsters are creepy in a good way."    # all downcased
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."    # all upcased
```

```ruby
munsters_description = "The Munsters are creepy in a good way."

munsters_description.swapcase!      # => "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.capitalize!    # => "The munsters are creepy in a good way." 
munsters_description.downcase       # => "the munsters are creepy in a good way."
musnters_description.upcase         # => "THE MUNSTERS ARE CREEPY IN A GOOD WAY."  
```



## QUESTION 3
We have most of the Munster family in our age hash:

```ruby
ages = { 
  "Herman" => 32,
  "Lily" => 30,
  "Grandpa" => 5843,
  "Eddie" => 10
}
```

Add ages for Marilyn and Spot to the existing hash:

```ruby
additional_ages = { 
  "Marilyn" => 22,
  "Spot" => 237
}
```

```ruby
ages.merge!(additional_ages)
```



## QUESTION 4
See if the name "Dino" appears in the string below:

```ruby
advice = "Few things in life are as important as house training your pet dinosaur Dino."

advice.match?("Dino")
```



## QUESTION 5
Show an easier way to write this array:

```ruby
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
```

```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Peblles)
```

The notation `%w(.. ..)` is used to write an array of strings separated by spaces instead of commas and without quotes.



## QUESTION 6
How can we add the family pet "Dino" to our usual array:

```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
```



## QUESTION 7
In the previous problem we added Dino to our array like this:

```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
```

We could have used either `Array#concat` or `Array#push` to add Dino to the family.

How can we add multiple items to our array? (Dino and Hoppy)

```ruby
flintstones = %w(Fred Barney WIlma Betty BamBam Peblles)

# <<
flintstones << "Dino" << "Hoppy"

# push
flintstones.push("Dino").push("Hoppy")

# concat
flintstones.concat(%w(Dinno Hoppy))
```

`Array#push` returns the array so we can chain. <br>
`Array#concat` adds to an array rather than one item.



## QUESTION 8
Shorten this sentence:

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
```

...remove everything starting form "house".

Review the `String#slice!` documentation, and use that method to make the return value: <br>
`"Few things in life are as important as "`. <br>
But leave the `advice` variable as `"house training your pet dinosaur."`.

As a bonus, what happens if you use the `String#slice` method instead?

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."

# based on index
advice.slice!(0, 39)

# using Array#index
advice.slice(0, advice.index("house"))
```

If we use the `String#slice` method instead, the return value will remain the same, but the advice string will not be mutated. 



## QUESTION 9
Write a one-liner to count the number of lower-case `t` characters in the following string:

```ruby
statement = "The Flintstones Rock!"

statement.count("t")
```



## QUESTION 10
Back in the stone age (before CSS) we used spaces to align things on the screen. <br>
If we had a 40 character wide table of Flintstone family members, <br>
how could we easily center the title above the table with spaces?

```ruby
title = "Flintstone Family Members"

title.center(40)
```