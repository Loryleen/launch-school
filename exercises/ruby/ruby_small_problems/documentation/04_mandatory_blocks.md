# MANDATORY BLOCKS

The `Array#bsearch` method is used to search ordered `Array`s more quickly than `#find` and `#select`. <br>
Assume you have the following code:

```ruby
a = [1, 4, 8, 11, 15, 19]
```

How would you search this `Array` to find the first element whose value exceeds `8`?  

```ruby
value = a.bsearch { |num| num > 8 }   

puts value # => 11
```

We use `a` as the receiver (object we apply `#bsearch` on), <br>
and a block of `{ | element | element > 8 }` to find the first element whose value is greater than 8. <br>
We then store that return value in the `value` variable and print it. <br>



## Array#bsearch
`Array#bsearch` has the signature: 

`bsearch {|x| block} → elem`

This signature shows that `#bsearch` takes only one argument, a block, <br> 
and then returns an element of the `Array` to which it is applied. 

This block is required and takes one argument. 

We can use this method in two use cases: a find-minimum mode and a find-any mode. <br>
The elements of the array must be sorted!

In find-minimum mode, the block must return true or false, <br>
and there must be an index i `(0 <= i <= ary.size)` so that:
- the block returns false for any element whose index is less than i
- the block returns true for any element whose index is gretater than or equal to i.



## BINARY SEARCH ALGORITHM
Binary search works on sorted arrays. <br>
Binary search begins by comparing the middle element of an array with the target value. <br>
If the target values matches the middle element, its position in the array is returned. <br>
If the target value is less than the middle element, the search continues in the lower half of the array. <br>
If the target value is greater than the middle element, the search search continues in the upper half of the array. <br>
By doing this, the algorithm eliminates the half in which the target value cannot lie in each iteration. 