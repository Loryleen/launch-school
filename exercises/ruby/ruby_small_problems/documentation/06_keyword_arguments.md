# KEYWORD ARGUMENTS

What does this code print?

```ruby
5.step(to: 10, by: 3) { |value| puts value }    

# =>
#   5
#   8
```



## #step DOCUMENTATION
Finding the documentation for #step can be difficult since there are different types of number classes in ruby. <br>
If we need a method that works with numbers, we should look through:
- `Integer`
- `Float`
- `Numeric`
- `Math`

`Integer` and `Float` inherit from `Numeric`. <br>
`Numeric` is basically the superclass of all numeric types. <br>
`Math` is a module that supplies a lot of number crunching functionality. 



## Numeric#step
For this particular problem, we can find `#step` in the `Numeric` class documentation. <br>
`Numeric#step` has 4 calling signatures, but we're only interested in the following: 

`step(by: step, to: limit) { |i| block } → self`

This version of `Numeric#step` takes two `keyword arguments`, `:by` and `to:` (keyword argument names are symbols). 

The `:by` argument is a "step" value, while the argument `:to` is a "limit". <br>
The "step" value indicates how much to increment the index with each iteration. <br>
The "limit" value is the largest value. <br>
If the index is greater than the limit, the loop exits. 

The code will print `5` in its first iteration and `8` in the second iteration. <br>
The loop quits once the index exceeds the limit `10`. 