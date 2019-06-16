# PSEUDO-CODE
Pseudo-code is meant for humans to read. <br>
To begin solving a problem, we must first load the problem into our brain. <br>
We do not use programming code first.

The example below is pseudo-code for a method <br>
that determines which number is greatest in a collection.

```
Given a collection of integers.

Iterate through the collection one by one.
  - save the first value as the starting value.
  - for each iteration, compare the saved value with the current value.
  - if the saved value is greater, or it's the same
    - move to the next value in the collection
  - otherwise, if the current value is greater
    - reassign the saved value to the current value

After iterating through the collection, return the saved value.
```

Loading the problem in our brain with pseudo-code enables us to focus on <br>
the logical aspect of solving a problem instead of being interrupted by syntactical issues.

THere aer two layers to solving any problem:
1. The logical problem domain layer
2. The syntactical programming language layer

When we're not fluent in a programming language, <br>
doing both at the same time can be difficult. 



## FORMAL PSEUDO-CODE
We can use some keywords to help us break down the program logic into concrete commands. <br>
This makes translating to program code much easier. 

```
Keyword               |   Meaning 
---------------------------------------------------------------
START                 |   start of the program
SET                   |   sets a variable we can use for later
GET                   |   retrieve input from user
PRINT                 |   displays output to user
READ                  |   retrieve value from variable
IF / ELSE IF / ELSE   |   show conditional branches in logic
WHILE                 |   show looping logic
END                   |   end of the program
```

```
START

# Given a collection of integers called "numbers"

SET iterator = 1
SET save_number = value ithin numbers collection at space 1

WHILE iterator <= length of numbers
  SET current_number = value within numbers collection at space "iterator"
  IF saved_number >= current_number
    go to the next iteration
  ELSE
    saved_number = current_number
  
  iterator = iterator + 1

PRINT saved_number

END
```

Next, we need to verify the logic of our pseudo-code by translating it into program code. 



## TRANSLATING PSEUDO-CODE TO PROGRAM CODE
REMEMBER: Pseudo-code is a guess at the solution without verifying the logic is correct. <br>
Only when you translate it to actual programming code is the logic being verified. 

The Ruby code below verifies our pseudo-code logic above is correct:

```ruby
def find_greatest(numbers)
  saved_number = nil

  numbers.each do |num|
    saved_number ||= num    # assign to first value
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end
```

For more sophisticated problems, take a piecemeal approach to applying pseudo-code:
- Begin with a piece of pseudo-code
- Translate it to Ruby code to verify the logic is correct
- Move on to the next piece in the problem 

This lets us slowly load the problem into our brain, verifying the logic each step along the way. 